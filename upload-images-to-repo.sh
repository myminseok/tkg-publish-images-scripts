#!/bin/bash

source tanzu-no-internet-env.sh
source ./common-lib.sh
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "put tkg images list filename as an argument."
  echo " 1. generate the list: ./gen-publish-images.sh > images-copy-list"
  echo " 2. then run: $0 images-copy-list"
  exit 1
fi

images_script=${1}
#commands="$(cat ${images_script} |grep imgpkg |sort |uniq)"
commands="$(cat ${images_script} |grep imgpkg |uniq)"

TKG_CUSTOM_IMAGE_REPOSITORY=${TKG_CUSTOM_IMAGE_REPOSITORY:-''}
TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE=${TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE:-''}
TKG_IMAGES_DOWNLOAD_FOLDER=${TKG_IMAGES_DOWNLOAD_FOLDER:-''}
TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE_PATH="/tmp/tkg_custom_repo_cacrt_base64d.crt"
TKG_UPLOADING_NOT_FOUND_TAR_LIST="/tmp/tkg_uploading_not_found_tar_list.txt"
echo "" > $TKG_UPLOADING_NOT_FOUND_TAR_LIST

if [ -z "$TKG_CUSTOM_IMAGE_REPOSITORY" ]; then
  echo "TKG_CUSTOM_IMAGE_REPOSITORY variable is required but is not defined" >&2
  exit 1
fi
if [ -z "$TKG_IMAGES_DOWNLOAD_FOLDER" ]; then
  echo "TKG_IMAGES_DOWNLOAD_FOLDER variable is required but is not defined" >&2
  exit 1
fi

if [ -n "$TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE" ]; then
  echo $TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE > /tmp/cacrtbase64
  base64 -d /tmp/cacrtbase64 > $TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE_PATH
  echo "generated $TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE_PATH"
fi

## param: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-bom:v1.5.2 
## return: new_domain/tkg/tkg-bom
gen_target_image_repo(){
  actualImageUrl=$4
  actualImageRepo=$(get_image_repo_from_url $actualImageUrl)
  targetImageRepo=$(replace_domain_from_url $actualImageRepo $TKG_IMAGE_REPO $TKG_CUSTOM_IMAGE_REPOSITORY)
  echo $targetImageRepo
}

total="$(grep imgpkg ${images_script} | wc -l)"
index=1
while IFS= read -r cmd; do 
  to_repo=$(gen_target_image_repo $cmd)
  command="upload_image $cmd --to-repo $to_repo"
  if [ -n "$TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE" ]; then
    command="upload_image $cmd --to-repo $to_repo --registry-ca-cert-path $TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE_PATH"
  fi
  echo -e "\n($index/$total) $command"
  until $command; do
     echo -e "\n($index/$total) Upload failed. Retrying....\n"
     sleep 1
  done
  index=$(( $index + 1 ))
done <<< "$commands"

echo -e "\n==========="
echo -e "Failed tar image list while uploading: $TKG_UPLOADING_NOT_FOUND_TAR_LIST"
cat $TKG_UPLOADING_NOT_FOUND_TAR_LIST
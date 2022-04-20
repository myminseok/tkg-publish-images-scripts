#!/bin/bash

source tanzu-no-internet-env.sh
source ./common-lib.sh
set -euo pipefail

TKG_CUSTOM_IMAGE_REPOSITORY=${TKG_CUSTOM_IMAGE_REPOSITORY:-''}
TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE=${TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE:-''}
TKG_IMAGES_DOWNLOAD_FOLDER=${TKG_IMAGES_DOWNLOAD_FOLDER:-''}

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
  base64 -d /tmp/cacrtbase64 > ./cacrtbase64d.crt
  echo "generated ./cacrtbase64d.crt"
fi

images_script=${1:-}
if [ ! -f $images_script ]; then
  echo "You may add your images list filename as an argument."
  echo "E.g ./download-images.sh image-copy-list"
fi

#commands="$(cat ${images_script} |grep imgpkg |sort |uniq)"
commands="$(cat ${images_script} |grep imgpkg |uniq)"

## param: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-bom:v1.5.2 --to-tar tkg-bom-v1.5.2.tar
## return: new_domain/tkg/tkg-bom
gen_target_image_repo(){
  actualImageUrl=$4
  actualImageRepo=$(get_image_repo_from_url $actualImageUrl)
  targetImageRepo=$(replace_domain_from_url $actualImageRepo $TKG_IMAGE_REPO $TKG_CUSTOM_IMAGE_REPOSITORY)
  echo $targetImageRepo
}
 
while IFS= read -r cmd; do 
  to_repo=$(gen_target_image_repo $cmd)
  command="upload_image $cmd --to-repo $to_repo"
  if [ -n "$TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE" ]; then
    command="upload_image $cmd --to-repo $to_repo --registry-ca-cert-path ./cacrtbase64d.crt"
  fi
  echo -e "\nrunning $command"
  until $command; do
     echo -e "\nUpload failed. Retrying....\n"
     sleep 1
  done
done <<< "$commands"

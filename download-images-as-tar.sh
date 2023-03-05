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
TKG_FAILED_DOWNLOAD_TAR_LIST="/tmp/tkg_failed_downloading_tar_list.txt"
echo ""> $TKG_FAILED_DOWNLOAD_TAR_LIST

TKG_IMAGES_DOWNLOAD_FOLDER=${TKG_IMAGES_DOWNLOAD_FOLDER:-''}
if [ -z "$TKG_IMAGES_DOWNLOAD_FOLDER" ]; then
  echo "TKG_IMAGES_DOWNLOAD_FOLDER variable is required but is not defined" >&2
  exit 1
fi
mkdir -p $TKG_IMAGES_DOWNLOAD_FOLDER

commands="$(cat ${images_script} |grep imgpkg |uniq)"
total="$(grep imgpkg ${images_script} | wc -l)"
index=1
while IFS= read -r cmd; do
  echo -e "\n($index/$total) $cmd"
  until download_image $cmd; do
     echo -e "\n($index/$total) Downloading failed. Retrying... $cmd"
     sleep 1
  done
  index=$(( $index + 1 ))
done <<< "$commands"

echo -e "\n==========="
echo -e "Failed tar image list to download: $TKG_FAILED_DOWNLOAD_TAR_LIST"
cat $TKG_FAILED_DOWNLOAD_TAR_LIST
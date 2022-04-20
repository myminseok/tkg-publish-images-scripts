#!/bin/bash

source tanzu-no-internet-env.sh
source ./common-lib.sh
set -euo pipefail

images_script=${1:-}
if [ ! -f $images_script ]; then
  echo "You may add your images list filename as an argument."
  echo "E.g ./download-images.sh image-copy-list"
fi

TKG_IMAGES_DOWNLOAD_FOLDER=${TKG_IMAGES_DOWNLOAD_FOLDER:-''}
if [ -z "$TKG_IMAGES_DOWNLOAD_FOLDER" ]; then
  echo "TKG_IMAGES_DOWNLOAD_FOLDER variable is required but is not defined" >&2
  exit 1
fi
mkdir -p $TKG_IMAGES_DOWNLOAD_FOLDER



commands="$(cat ${images_script} |grep imgpkg |uniq)"

while IFS= read -r cmd; do
  echo -e "\nrunning $cmd\n"
  until download_image $cmd; do
     echo -e "\nDownload failed. Retrying....\n"
     sleep 1
  done
done <<< "$commands"

#!/bin/bash

source tanzu-no-internet-env.sh

set -eo pipefail


SOURCE_SCRIPT="./publish-images.sh"
OUTPUT_DOWNLOAD_SCRIPT="./download-images.sh"
OUTPUT_UPLOAD_SCRIPT="./upload-images.sh"
OUTPUT_PUBLISH_SCRIPT="./download-upload-images.sh"
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
mkdir -p $TKG_IMAGES_DOWNLOAD_FOLDER


if [ ! -f "$SOURCE_SCRIPT" ]; then
    echo "- [WARN] no file exists $SOURCE_SCRIPT"
    exit 1
fi
if [ -n "$TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE" ]; then
  echo $TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE > /tmp/cacrtbase64
  base64 -d /tmp/cacrtbase64 > ./cacrtbase64d.crt
  echo "generated ./cacrtbase64d.crt"
fi

### for download script
echo "#!/bin/bash" > $OUTPUT_DOWNLOAD_SCRIPT
echo "export TKG_IMAGES_DOWNLOAD_FOLDER=$TKG_IMAGES_DOWNLOAD_FOLDER" >> $OUTPUT_DOWNLOAD_SCRIPT
echo "source ./common-lib.sh" >> $OUTPUT_DOWNLOAD_SCRIPT
sed 's/imgpkg copy/download_image/g' $SOURCE_SCRIPT >> $OUTPUT_DOWNLOAD_SCRIPT
chmod +x $OUTPUT_DOWNLOAD_SCRIPT
echo "generated $OUTPUT_DOWNLOAD_SCRIPT"

### for upload script
echo "#!/bin/bash" > $OUTPUT_UPLOAD_SCRIPT
echo "export TKG_IMAGES_DOWNLOAD_FOLDER=$TKG_IMAGES_DOWNLOAD_FOLDER" >> $OUTPUT_UPLOAD_SCRIPT
echo "source ./common-lib.sh" >> $OUTPUT_UPLOAD_SCRIPT
sed 's/imgpkg copy/upload_image/g' $SOURCE_SCRIPT >> $OUTPUT_UPLOAD_SCRIPT
chmod +x $OUTPUT_UPLOAD_SCRIPT
echo "generated $OUTPUT_UPLOAD_SCRIPT"

### for download and upload script
echo "#!/bin/bash" > $OUTPUT_PUBLISH_SCRIPT
echo "export TKG_IMAGES_DOWNLOAD_FOLDER=$TKG_IMAGES_DOWNLOAD_FOLDER" >> $OUTPUT_PUBLISH_SCRIPT
echo "source ./common-lib.sh" >> $OUTPUT_PUBLISH_SCRIPT
sed 's/imgpkg copy/download_upload_image/g' $SOURCE_SCRIPT >> $OUTPUT_PUBLISH_SCRIPT
chmod +x $OUTPUT_PUBLISH_SCRIPT
echo "generated $OUTPUT_PUBLISH_SCRIPT"

sed 's/download_image/rename_downloaded_image/g' $OUTPUT_DOWNLOAD_SCRIPT> rename-downloaded-images.sh
chmod +x rename-downloaded-images.sh


#!/bin/bash

get_image_tag(){
  actualImageRepo=$1
  imageTag=`echo $actualImageRepo | cut -d':' -f 2`
  if [[ "$actualImageRepo" =~ "@sha256"  ]]; then  # sha256 tagging with imgpkg has unique format
    echo "sha256-$imageTag.imgpkg"
  else
    echo "$imageTag"
  fi
}
##projects.registry.vmware.com/tkg/tkg-bom:v1.4.0
## return filename path
gen_download_tar_name(){
   ## remove domain.
   contexts=`echo $1 | cut -d'/' -f2- | sed 's/[@\/]/__/g'`
   echo "${contexts}.imgpkg"
}

gen_download_tar_name_with_domain(){
   ## preserve domain and context
   domain_context=`echo $1 | cut -d'/' -f1- | sed 's/[@\/]/__/g'`
   ##tarName=`basename $1 | awk -F":" '{print $1"__"$2}'`
   echo "${domain_context}.imgpkg"
}
## rename image name to include domain
rename_downloaded_image(){
  imageOrBundle=$1
  actualImageRepo=$2
  customRepo=$4	
  customRepoCaPath=$6
  set -e
  downloadTarNameOld="$(gen_download_tar_name $actualImageRepo)"
  downloadTarName="$(gen_download_tar_name_with_domain $actualImageRepo)"
  downloadTarSuccessOld="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarNameOld"
  downloadTarSuccess="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarName"
  if [ -f "$downloadTarSuccessOld" ]; then
    echo "- rename download image $downloadTarSuccess"
    mv $downloadTarSuccessOld $downloadTarSuccess
  else
    echo "- old file not found $downloadTarSuccessOld"
  fi
}

## if images alread downloaded, skip download 
## param: -i projects.registry.vmware.com/tkg/tkg-bom:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt
download_image(){
  imageOrBundle=$1
  actualImageRepo=$2
  customRepo=$4	
  customRepoCaPath=$6
  set -e
  downloadTarName="$(gen_download_tar_name_with_domain $actualImageRepo)"
  downloadTarSuccess="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarName"
  downloadTarTmp="/tmp/publish-images/$downloadTarName"
  mkdir -p "/tmp/publish-images/"
  if [ -f "$downloadTarSuccess" ]; then
    echo "- skip downloading. tar image alreay exists in $downloadTarSuccess"
  else
    echo "- downloading ($imageOrBundle) $actualImageRepo as $downloadTarTmp"
    imgpkg copy $imageOrBundle $actualImageRepo --to-tar "$downloadTarTmp"
    mv $downloadTarTmp $downloadTarSuccess #copy only after download successfully
    echo "  download complete $downloadTarSuccess"
  fi
}

## if images not exists on custom repo, then upload
## param: -i projects.registry.vmware.com/tkg/tkg-bom:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt
upload_image(){
  imageOrBundle=$1
  actualImageRepo=$2
  customRepo=$4
  customRepoCaPath=$6
  imageTag=$(get_image_tag $actualImageRepo)
  echo "[INFO] checking $customRepo:$imageTag"
  set +e
  docker manifest inspect "$customRepo:$imageTag" > /dev/null
  if [ $? -eq 0 ] ; then
    echo "- skip processing. image alreay exists in $customRepo"
    set -e
    return
  fi
  set -e
  downloadTarName="$(gen_download_tar_name_with_domain $actualImageRepo)"
  downloadTarPath="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarName"
  if [ ! -f "$downloadTarPath" ]; then
    echo "- [ERROR] no tar image exists as $downloadTarPath"
    set -e 
    exit 1
  fi
  echo "- uploading image: imgpkg copy --tar $downloadTarPath  --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath"
  imgpkg copy --tar $downloadTarPath  --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath
}


## if images not exists on custom repo, then download and upload
## if images alread downloaded, skip download and upload
## PARAM: -i projects.registry.vmware.com/tkg/tkg-bom:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt
download_upload_image(){
  imageOrBundle=$1
  actualImageRepo=$2
  customRepo=$4
  customRepoCaPath=$6
  download_image $imageOrBundle $actualImageRepo --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath
  upload_image $imageOrBundle $actualImageRepo --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath
}

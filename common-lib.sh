#!/bin/bash

## param: projects.registry.vmware.com/tkg/file:v1.4.0 source_string new_string
## return: new_domain/tkg/file:v1.4.0
replace_domain_from_url(){
  originalUrl=$(get_image_repo_from_url $1 | sed 's/\//___/g')
  originalDomain=$(echo $2 | sed 's/\//___/g')
  newDomain=$(echo $3 | sed 's/\//___/g')
  newUrl=$(echo $originalUrl | sed "s/$originalDomain/$newDomain/g" | sed 's/___/\//g')
  echo $newUrl
}

## param: projects.registry.vmware.com/tkg/tkg-bom:v1.4.0
## return domain: projects.registry.vmware.com
get_domain_from_url(){
  echo $( echo $1 | cut -d'/' -f1 )
}


## param: projects.registry.vmware.com/tkg/tkg-bom:v1.4.0
## return tag: projects.registry.vmware.com/tkg/tkg-bom
get_image_repo_from_url(){
  actualImageRepo=$1
  echo $(echo $actualImageRepo | cut -d':' -f 1)
}

## param: projects.registry.vmware.com/tkg/tkg-bom:v1.4.0
## return tag: v1.4.0
get_tag_from_url(){
  actualImageRepo=$1
  imageTag=`echo $actualImageRepo | cut -d':' -f 2`
  if [[ "$actualImageRepo" =~ "@sha256"  ]]; then  # sha256 tagging with imgpkg has unique format
    echo "sha256-$imageTag.imgpkg"
  else
    echo "$imageTag"
  fi
}

## param: projects.registry.vmware.com/dep1/dep2/dep3/file:v1.4.
## return replace slash: projects.registry.vmware.com__dep1__dep2__dep3__file:v1.4.0.imgpkg
gen_download_tar_name(){
   ## preserve domain and context
   domain_context=`echo $1 | cut -d'/' -f1- | sed 's/[@\/]/__/g'`
   echo "${domain_context}.imgpkg"
}

## if images alread downloaded, skip download 
## param: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-compatibility:v6 --to-tar tkg-compatibility-v6.tar
download_image(){
  imageOrBundle=$3
  actualImageRepo=$4
  set -e
  downloadTarName="$(gen_download_tar_name $actualImageRepo)"
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

## upload to target repo onlyif images not exists on custom repo
## param: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-compatibility:v6 --to-tar tkg-compatibility-v6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt
upload_image(){
  imageOrBundle=$3
  actualImageRepo=$4
  customRepo=$8
  customRepoCaPath=${10}

  imageTag=$(get_tag_from_url $actualImageRepo)
  echo "- checking $customRepo:$imageTag"
  set +e
  docker manifest inspect "$customRepo:$imageTag" > /dev/null 2>&1
  if [ $? -eq 0 ] ; then
    echo "- skip uploading. image alreay exists in $customRepo"
    set -e
    return
  fi
  set -e
  downloadTarName="$(gen_download_tar_name $actualImageRepo)"
  downloadTarPath="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarName"
  if [ ! -f "$downloadTarPath" ]; then
    echo "- [ERROR] no tar image exists as $downloadTarPath"
    set -e 
    exit 1
  fi
  echo "- uploading image: imgpkg copy --tar $downloadTarPath  --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath"
  if [ -n "$customRepoCaPath" ]; then
    imgpkg copy --tar $downloadTarPath  --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath
  else
    imgpkg copy --tar $downloadTarPath  --to-repo $customRepo 
  fi
}

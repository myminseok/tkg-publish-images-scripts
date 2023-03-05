#!/bin/bash

function print_debug {
  if [ "true" != "$DEBUG_FUNCTION" ]; then
    return
  fi
  echo "  DEBUG: $1"
}

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

## get value from the input args that matches with the given key at LAST
## will export the found value as env variable.
## get_value_from_args 'RETURN_ENV' 'key_to_look_for' "$@"
## ex) 
##  get_value_from_args 'TO_REPO' '--to-repo' "imgpkg copy -i projects.registry.vmware.com/tkg/tkg-bom:v1.6.1 --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/tkg-bom"
##  echo "found --to-repo: $TO_REPO"
function get_value_from_args {
  DEBUG_FUNCTION="false" ## uncomment to debug this function.

  ARGS_TO_PARSE=($@) ## arg list to look for $LOOKUP_KEY
  RETURN_ENV=${ARGS_TO_PARSE[0]} ## ENV variable name to return the result to this function caller.
  LOOKUP_KEY=${ARGS_TO_PARSE[1]} ## any form of key name to look for such as '--download'
  KEY_TO_EXPECT_VALUE="" ## use for arg with no '=', to track next value for the key. such as '--download /my/file'
  FOUND_VALUE="" ## found value for the $LOOKUP_KEY

  print_debug "LOOKUP_KEY:$LOOKUP_KEY"
  print_debug "===================="
  for i in "${!ARGS_TO_PARSE[@]}"; do
    if (( $i <= 1 )); then ## skip the first args as it is key to look for.
      continue
    fi
    case ${ARGS_TO_PARSE[$i]} in
      $LOOKUP_KEY=*)
        #key=$(echo ${ARGS_TO_PARSE[$i]}| cut -d'=' -f1)
        value="${ARGS_TO_PARSE[$i]#*=}"
        FOUND_VALUE="$value"
        print_debug "case $LOOKUP_KEY=*) ${ARGS_TO_PARSE[$i]} FOUND_VALUE:$FOUND_VALUE"
        shift # past argument=value
      ;;

      $LOOKUP_KEY)
        KEY_TO_EXPECT_VALUE="FOUND_VALUE"
        print_debug "case $LOOKUP_KEY) key found. KEY_TO_EXPECT_VALUE:$KEY_TO_EXPECT_VALUE"
        shift # past argument=value
      ;;
      *)
        print_debug "case default) ${ARGS_TO_PARSE[$i]}"
        if [ "$KEY_TO_EXPECT_VALUE" == "" ]; then
          print_debug " --> continue as KEY_TO_EXPECT_VALUE is empty"
          continue # ignore
        fi
        value="${ARGS_TO_PARSE[$i]}"
        cmd="$KEY_TO_EXPECT_VALUE=\$value" ## set value to $KEY_TO_EXPECT_VALUE
        print_debug "  --> found value:$value"
        print_debug "  --> $cmd"
        eval "$cmd"
        KEY_TO_EXPECT_VALUE=""
      ;;
    esac
    print_debug "=== CURRENT RESULT ==="
    print_debug "KEY_TO_EXPECT_VALUE:$KEY_TO_EXPECT_VALUE"
    print_debug "FOUND_VALUE:$FOUND_VALUE"
    print_debug "===================="

    # if [ "$FOUND_VALUE" != "" ]; then
    #   eval "export $RETURN_ENV=\$FOUND_VALUE"
    #   return
    # fi
    
  done
  eval "$RETURN_ENV=\$FOUND_VALUE"
}


## if images alread downloaded, skip download 
## param: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-compatibility:v6
download_image(){
  imageOrBundle=$3
  actualImageRepo=$4

  downloadTarName="$(gen_download_tar_name $actualImageRepo)"
  downloadTarSuccess="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarName"
  downloadTarTmp="/tmp/publish-images/$downloadTarName"
  mkdir -p "/tmp/publish-images/"
  if [ -f "$downloadTarSuccess" ]; then
    echo "- skip downloading. tar image alreay exists in $downloadTarSuccess"
    return
  fi

  set +e ## skip on error
  echo "- downloading ($imageOrBundle) $actualImageRepo as $downloadTarTmp"
  imgpkg copy $imageOrBundle $actualImageRepo --to-tar "$downloadTarTmp"
  mv $downloadTarTmp $downloadTarSuccess #copy only after download successfully
  if [ ! -f "$downloadTarSuccess" ]; then
    echo "- [ERROR] skip downloading: failed to download the tar image (recoreded to $TKG_FAILED_DOWNLOAD_TAR_LIST) $downloadTarSuccess "
    echo $downloadTarSuccess >> $TKG_FAILED_DOWNLOAD_TAR_LIST
  else
    echo "  download complete $downloadTarSuccess"
  fi
  set -e
}

## upload to target repo onlyif images not exists on custom repo
## param example: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-compatibility:v6 --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.5/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt
## param example: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-compatibility:v6 --to-tar tkg-compatibility-v6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt
## param example: imgpkg copy -i projects.registry.vmware.com/tkg/tkg-bom:v1.6.1 --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/tkg-bom --registry-ca-cert-path ./cacrtbase64d.crt
upload_image(){
  imageOrBundle=$3 # -i
  actualImageRepo=$4  # projects.registry.vmware.com/tkg/tkg-compatibility:v6
  # customRepo=${10}
  # customRepoCaPath=${12}
  get_value_from_args 'TO_REPO' '--to-repo' $@  
  customRepo=$TO_REPO

  get_value_from_args 'CA_PATH' '--registry-ca-cert-path' $@  
  customRepoCaPath=$CA_PATH
  

  downloadTarName="$(gen_download_tar_name $actualImageRepo)"
  downloadTarPath="$TKG_IMAGES_DOWNLOAD_FOLDER/$downloadTarName"
  if [ ! -f "$downloadTarPath" ]; then
    echo "- [ERROR] skip uploading: the tar image not found (recoreded to $TKG_UPLOADING_NOT_FOUND_TAR_LIST) $downloadTarPath"
    echo $downloadTarPath >> $TKG_UPLOADING_NOT_FOUND_TAR_LIST
    return
  fi

  imageTag=$(get_tag_from_url $actualImageRepo)
  echo "- checking $customRepo:$imageTag"
  set +e ## skip on error
  docker manifest inspect "$customRepo:$imageTag" > /dev/null 2>&1
  if [ $? -eq 0 ] ; then
    echo "- skip uploading. image alreay exists in $customRepo"
    set -e
    return
  fi
  set -e

  echo "- uploading image: imgpkg copy --tar $downloadTarPath  --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath"
  if [ -n "$customRepoCaPath" ]; then
    imgpkg copy --tar $downloadTarPath  --to-repo $customRepo --registry-ca-cert-path $customRepoCaPath
  else
    imgpkg copy --tar $downloadTarPath  --to-repo $customRepo 
  fi
}

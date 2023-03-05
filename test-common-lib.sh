#!/bin/bash
source ./common-lib.sh
DATA1=projects.registry.vmware.com/tkg/file:v1.4.0
DATA2=projects.registry.vmware.com/tkg/dep2/file:v1.4.0
DATA3=projects.registry.vmware.com/tkg/dep2/dep3/file:v1.4.0

echo $DATA1
echo $DATA2
echo $DATA3

echo ""
echo "#gen_download_tar_name"
gen_download_tar_name $DATA1
gen_download_tar_name $DATA2
gen_download_tar_name $DATA3

echo ""
echo "#get_image_repo_from_url"
get_image_repo_from_url $DATA1
get_image_repo_from_url $DATA2
get_image_repo_from_url $DATA3

echo ""
echo "#get_tag_from_url"
get_tag_from_url $DATA1
get_tag_from_url $DATA2
get_tag_from_url $DATA3

echo ""
echo "#replace_domain_from_url"
echo $DATA3
originalDomain=projects.registry.vmware.com/tkg
newDomain=infra-harbor.lab.pcfdemo.net/tkg-1.5
replace_domain_from_url $DATA3 $originalDomain $newDomain
replace_domain_from_url $DATA3 $originalDomain "$newDomain/"
echo ""
echo "#get_value_from_args --registry-ca-cert-path"
input="imgpkg copy -i projects.registry.vmware.com/tkg/tkg-bom:v1.6.1 --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/tkg-bom --registry-ca-cert-path ./cacrtbase64d.crt"
echo "input: $input"
get_value_from_args 'CA_PATH' '--registry-ca-cert-path' $input
echo "found --registry-ca-cert-path: $CA_PATH"



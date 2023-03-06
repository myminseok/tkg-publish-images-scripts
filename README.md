# Purpose
To install TKG on internet restricted environment, you need to pull all tkg images and transfer to the target environment. one simple way is pull all images from internet connected VM and then export and transfer the VM image. but there are some draw-backs, such as binary size and time to export the VM. sometimes, you need to download and upload the images you need for upgarde or patch. this guide explains how you can do above in a size and time efficient manner.

benefits:
- smaller file size to tansfer compares to VM( ex, ubuntu VM size 123G,  3 hours to export VM)
- skips already download images
- skips already upload images to the target container repos
- resumes from the failed downloading/uploading images due to unstable networks or other issues

**NOTE** tested for TKGm 1.6 for vsphere infrastructure<br>
**TODO** scripts provides here doesn't do file integrity check download files. although scripts here uses temporary folder(/tmp) and move files once download successful to cope with failures, you need to check the integrity last downloaded file with hash or md5 to improve integrity

# How to use

## Pre-requisites
- ubuntu VM with docker engine and harbor repository installed
- imgpkg v0.15.0+ (https://github.com/vmware-tanzu/carvel-imgpkg/releases/tag/v0.15.0). previous imgpkg has bug on handing image url based sha256 scheme(https://github.com/vmware-tanzu/carvel-imgpkg/issues/142)


## On internet accessible environment

Set environment variables for downloading TKG images.[`Copy Images into an Airgapped Environment](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.6/vmware-tanzu-kubernetes-grid-16/GUID-mgmt-clusters-image-copy-airgapped.html)

vi tanzu-no-internet-env.sh
```
export TKG_CUSTOM_IMAGE_REPOSITORY="PRIVATE-REGISTRY-IP/PRIVATE-REGISTRY-HOSTNAME"
export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_BOM_IMAGE_TAG="v1.6.1"
```
```
export TKG_CUSTOM_IMAGE_REPOSITORY="infra-harbor.lab.pcfdemo.net/tkg-1.6"
export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_BOM_IMAGE_TAG="v1.6.1"
export TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE="YOUR-TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE"

export TKG_IMAGES_DOWNLOAD_FOLDER="/data/tanzubin-1.6.1/tkg-images"
```
> TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE: Set if your private image registry uses a self-signed certificate. Provide the CA certificate in base64 encoded format. `cat harbor.crt | base64 -w0`  
> TKG_IMAGES_DOWNLOAD_FOLDER: local folder. it will be created by download-images-as-tar.sh

## generate image list to download 
Generate the `images-to-tar-list`
```
wget https://raw.githubusercontent.com/vmware-tanzu/tanzu-framework/f07a8853e2462d96ec184abdb0a0a63b00d38a9a/hack/gen-publish-images-totar.sh
chmod + gen-publish-images-totar.sh
source ./tanzu-no-internet-env.sh
./gen-publish-images-totar.sh > images-to-tar-list
```
WARNING: do not use `gen-publish-images.sh` from official docs as it generates some wrong command (https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.6/vmware-tanzu-kubernetes-grid-16/GUID-mgmt-clusters-airgapped-environments.html)
ex
```
generated: 
imgpkg copy -i projects.registry.vmware.com/tkg/packages/capabilities:v0.25.0-23-g6288c751_vmware.1 --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

it should be: 
imgpkg copy -b projects.registry.vmware.com/tkg/packages/capabilities:v0.25.0-23-g6288c751_vmware.1 --to-repo infra-harbor.nestedlab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt
``` 
## download images
run  `download-images-as-tar.sh` on internet connected VM to download all TKG images under the folder TKG_IMAGES_DOWNLOAD_FOLDER defined in `tanzu-no-internet-env.sh` 

```
source ./tanzu-no-internet-env.sh
download-images-as-tar.sh ./images-to-tar-list
```
> if the image is already downloaded, then skip downloading the image
> it will keep retrying to download the item until it success.
> if the downloading failed, then record to "/tmp/tkg_failed_downloading_tar_list.txt" and continue the downloading the next item.

## Transfer all the downloaded images and the generated scripts to VM on  internet-restrected environments 
- tkg-publish-images-scripts
- TKG_IMAGES_DOWNLOAD_FOLDER

## On internet-restrected environment
upload the copied TKG images to the internal container registry
```
docker login <TKG_CUSTOM_IMAGE_REGISTRY>
source tanzu-no-internet-env.sh
./upload-images-to-repo.sh ./images-to-tar-list
```
> if the tar image doesn't exist, then record to "/tmp/tkg_uploading_not_found_tar_list.txt" and continue the uploading the next item
> if the image is already in the target repo, then skip uploading the image
> it will keep retrying to upload the item until it success.

now you are ready to install TKG. Enjoy Tanzu!

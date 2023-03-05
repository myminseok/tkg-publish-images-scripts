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
Generate the `images-copy-list` by following [`Generate the publish-images Script` TKG public docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.6/vmware-tanzu-kubernetes-grid-16/GUID-mgmt-clusters-airgapped-environments.html)
```
./gen-publish-images.sh > images-copy-list
```

vi tanzu-no-internet-env.sh
```
export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY="infra-harbor.lab.pcfdemo.net/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE="YOUR-TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE"
```
> Optional. Set if your private image registry uses a self-signed certificate. Provide the CA certificate in base64 encoded format, for example TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE: "LS0t[...]tLS0tLQ=="".


## download images
run  `download-images-as-tar.sh` on internet connected VM to download all TKG images under the folder TKG_IMAGES_DOWNLOAD_FOLDER defined in `tanzu-no-internet-env.sh` 

```
source ./tanzu-no-internet-env.sh
download-images-as-tar.sh ./images-copy-list
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
./upload-images-to-repo.sh ./images-copy-list
```
> if the tar image doesn't exist, then record to "/tmp/tkg_uploading_not_found_tar_list.txt" and continue the uploading the next item
> if the image is already in the target repo, then skip uploading the image
> it will keep retrying to upload the item until it success.

now you are ready to install TKG. Enjoy Tanzu!

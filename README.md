# Purpose
To install TKG on internet restricted environment, you need to pull all tkg images and transfer to the target environment. one simple way is pull all images from internet connected VM and then export and transfer the VM image. but there are some draw-backs, such as binary size and time to export the VM. sometimes, you need to download and upload the images you need for upgarde or patch. this guide explains how you can do above in a size and time efficient manner.

benefits:
- smaller file size to tansfer compares to VM( ex, ubuntu VM size 123G,  3 hours to export VM)
- skips already download images
- skips already upload images to the target container repos
- resumes from the failed downloading/uploading images due to unstable networks or other issues

**NOTE** tested for TKGm 1.4 for vsphere infrastructure<br>
**TODO** scripts provides here doesn't do file integrity check download files. although scripts here uses temporary folder(/tmp) and move files once download successful to cope with failures, you need to check the integrity last downloaded file with hash or md5 to improve integrity

# How to use

## Pre-requisites
- ubuntu VM with docker engine and harbor repository installed
- imgpkg v0.15.0+ (https://github.com/vmware-tanzu/carvel-imgpkg/releases/tag/v0.15.0). previous imgpkg has bug on handing image url based sha256 scheme(https://github.com/vmware-tanzu/carvel-imgpkg/issues/142)
- publish-images.sh that you generated by following TKG official guide for [Prepare an Internet-Restricted Environment](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.4/vmware-tanzu-kubernetes-grid-14/GUID-mgmt-clusters-airgapped-environments.html)


## On internet accessible environment

define variables on `tanzu-no-internet-env.sh` to be used to generate scripts. all variables here respects [TKG installation guide](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.3/vmware-tanzu-kubernetes-grid-13/GUID-tanzu-config-reference.html#private-image-repository-configuration-8)
```
vi tanzu-no-internet-env.sh
export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY="infra-harbor.lab.pcfdemo.net/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE="YOUR-TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE"
```
> Optional. Set if your private image registry uses a self-signed certificate. Provide the CA certificate in base64 encoded format, for example TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE: "LS0t[...]tLS0tLQ=="".

Generate the `publish-images.sh` Script by following [`Generate the publish-images Script` TKG public docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.4/vmware-tanzu-kubernetes-grid-14/GUID-mgmt-clusters-airgapped-environments.html)

```
./source tanzu-no-internet-env.sh
./gen-publish-images.sh > publish-images.sh
```


clone this repo
```
git clone https://github.com/myminseok/tkg-publish-images-scripts
```

copy the publish-images.sh the cloned repo

```
cp publish-images.sh ./tkg-publish-images-scripts/publish-images.sh
cd ./tkg-publish-images-scripts
```

define additional TKG_IMAGES_DOWNLOAD_FOLDER variable on `tanzu-no-internet-env.sh` to be used to generate scripts. all variables here respects [TKG installation guide](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.3/vmware-tanzu-kubernetes-grid-13/GUID-tanzu-config-reference.html#private-image-repository-configuration-8)
```
vi tanzu-no-internet-env.sh

export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY="infra-harbor.lab.pcfdemo.net/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE="YOUR-TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE"

export TKG_IMAGES_DOWNLOAD_FOLDER="/data/tanzu-main-1.4-bin/tkg-images"
```
> Required. TKG_IMAGES_DOWNLOAD_FOLDER: all the download docker images will be located here and the folder will be created if you run the generated script later on .
> Optional. Set if your private image registry uses a self-signed certificate. Provide the CA certificate in base64 encoded format, for example TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE: "LS0t[...]tLS0tLQ=="".

now generate scripts.
```
./gen-scripts.sh

generated ./cacrtbase64d.crt
generated ./download-images.sh
generated ./upload-images.sh
generated ./download-upload-images.sh

```
Now this is file list you have

```
On Internet Connected VM
-gen-publish-images.sh    <--- provied by TKG docs.
-publish-images.sh        <--- generated by gen-publish-images.sh

-tanzu-no-internet-env.sh <--- defines variables to generate scripts.
-gen-scripts.sh           <--- will generate scripts based on publish-images.sh  and  tanzu-no-internet-env.sh 
-download-images.sh       <-- download all TKG images under the folder TKG_IMAGES_DOWNLOAD_FOLDER. 
-upload-images.sh.        <-- upload the copied TKG images to the internal container registry
-download-upload-images.sh <-- similar to `publish-images.sh` but skip already uploaded images on container repo.

-common-lib.sh

```


run  `download-images.sh` on internet connected VM to download all TKG images under the folder TKG_IMAGES_DOWNLOAD_FOLDER defined in `tanzu-no-internet-env.sh` 
```
./download-images.sh
```


## Transfer all the downloaded images and the generated scripts to VM on  internet-restrected environments 
- tkg-publish-images-scripts
- TKG_IMAGES_DOWNLOAD_FOLDER

## On internet-restrected environment
copy the cacrtbase64d.crt 
```
cp ./cacrtbase64d.crt /tmp/cacrtbase64d.crt
```

upload the copied TKG images to the internal container registry
```
./upload-images.sh
```
now you are ready to install TKG. Enjoy Tanzu!

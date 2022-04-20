# For TKG 1.5.2

# Purpose
To install TKG on internet restricted environment, you need to pull all tkg images and transfer to the target environment. one simple way is pull all images from internet connected VM and then export and transfer the VM image. but there are some draw-backs, such as binary size and time to export the VM. sometimes, you need to download and upload the images you need for upgarde or patch. this guide explains how you can do above in a size and time efficient manner.

benefits:
- skips already download images
- skips already upload images to the target container registry
- resumes from the failed downloading/uploading images due to unstable networks or other issues

**NOTE** tested for TKGm 1.5.2 for vsphere infrastructure<br>
**TODO** scripts provides here doesn't do file integrity check download files. although scripts here uses temporary folder(/tmp) and move files once download successful to cope with failures, you need to check the integrity last downloaded file with hash or md5 to improve integrity

# How to use

## Pre-requisites
- ubuntu VM with docker engine and harbor repository installed
- imgpkg v0.15.0+ (https://github.com/vmware-tanzu/carvel-imgpkg/releases/tag/v0.15.0)

## On internet accessible environment

### clone this repo
```
git clone https://github.com/myminseok/tkg-publish-images-scripts
```

### Now this is file list you have

```
On Internet Connected VM
- gen-publish-images-totar.sh  <--- provied by TKG docs.
- images-to-tar-list           <--- generated by gen-publish-images-totar.sh
- tanzu-no-internet-env.sh     <--- defines variables to generate scripts.
- download-images-improved.sh  <-- download all TKG images under the folder TKG_IMAGES_DOWNLOAD_FOLDER. 
- upload-images-improved.sh.   <-- upload the copied TKG images to the internal container registry
- common-lib.sh.               <-- shared library
```

### generate `images-to-tar-list` 
it can be generated by following TKG official guide for [Copy Images into an Airgapped Environment](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-mgmt-clusters-image-copy-airgapped.html#step-2-generate-the-imagestotarlist-file-2)
```
cd tkg-publish-images-scripts
./gen-publish-images-totar.sh > images-to-tar-list
```

### define variables on `tanzu-no-internet-env.sh` 
all variables here respects [Prepare an Internet-Restricted Environment](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-mgmt-clusters-airgapped-environments.html)
```
export TKG_IMAGES_DOWNLOAD_FOLDER="/data/tanzu-bin-1.5.2/tkg-images"
export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY="infra-harbor.lab.pcfdemo.net/tkg-1.5"
export TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE="YOUR-TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE"
```
> Optional. Set if your private image registry uses a self-signed certificate. Provide the CA certificate in base64 encoded format, for example TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE: "LS0t[...]tLS0tLQ=="".


### download images
run  `download-images-improved.sh` on internet connected VM to download all TKG images under the folder TKG_IMAGES_DOWNLOAD_FOLDER defined in `tanzu-no-internet-env.sh` 
```
./download-images-improved.sh ./images-to-tar-list
```

### Transfer all the downloaded images and the generated scripts to VM on  internet-restrected environments 
- tkg-publish-images-scripts
- TKG_IMAGES_DOWNLOAD_FOLDER

## On internet-restrected environment

### upload the copied TKG images to the internal container registry
```
./upload-images-improved.sh ./images-to-tar-list
```
now you are ready to install TKG. Enjoy Tanzu!

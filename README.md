# Purpose
For installing TKG on Internet restricted environment, there is a provided script `gen-publish-images.sh` from [`Generate the publish-images Script` TKG public docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.4/vmware-tanzu-kubernetes-grid-14/GUID-mgmt-clusters-airgapped-environments.html). it generates a script `publish-images.sh` which will be run on internet connected env and download all TKG images and upload to internal custom container registry at the sametime. most of the time, it is required to download all TKG images on internet connected VM first, then transfer and upload the images to container registry on internet-restrected. <br>
This scripts is for those case by leveraging the generated `publish-images.sh`.<br>
Additionally, sometimes downloading stops due to unstable networks and othere issues, this scripts skips already downloaded images, or uploaded on container images repositories for time efficiency.<br.
This is tested for `TKGm 1.4` for vsphere infrastructure.


## TODO
downloaded file integrity check is not tested in case of download failure. in case of re-running scripts, please check the integrity of last downloaded file with hash or md5<br>

# How to use

## Pre-requisites
- tested for `TKGm 1.4` for vsphere infrastructure.
- this scripts support bash on linux only.
- docker engine on local VM
- imgpkg v0.15.0+ (https://github.com/vmware-tanzu/carvel-imgpkg/releases/tag/v0.15.0) 

## On  internet accessible environments 

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

## On internet-restrected environments 
copy the cacrtbase64d.crt 
```
cp ./cacrtbase64d.crt /tmp/cacrtbase64d.crt
```

upload the copied TKG images to the internal container registry
```
./upload-images.sh
```
now you are ready to install TKG. Enjoy Tanzu!

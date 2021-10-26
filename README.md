# Purpose
This scripts is for installing TKGm on internet restricted environment by improving the script from [`Generate the publish-images Script` TKG public docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.4/vmware-tanzu-kubernetes-grid-14/GUID-mgmt-clusters-airgapped-environments.html).
especially for downloading all TKG images on internet connected VM first, and transfer and upload the images to container registry on internet-restrected
- tested for TKGm 1.4 on vsphere

# How to use
## On  internet accessible environments 
Generate the publish-images Script by following [`Generate the publish-images Script` TKG public docs](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.4/vmware-tanzu-kubernetes-grid-14/GUID-mgmt-clusters-airgapped-environments.html)
```
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

edit tanzu-no-internet-env.sh file to generate scripts. all variable here env variable from [TKG installation guide](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.3/vmware-tanzu-kubernetes-grid-13/GUID-tanzu-config-reference.html#private-image-repository-configuration-8)
```
vi tanzu-no-internet-env.sh

export TKG_IMAGES_DOWNLOAD_FOLDER="/data/tanzu-main-1.4-bin/tkg-images"
export TKG_IMAGE_REPO="projects.registry.vmware.com/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY="infra-harbor.lab.pcfdemo.net/tkg"
export TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE="YOUR-TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE"
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
run  `download-images.sh` on internet connected VM to download all TKG images under  the folder TKG_IMAGES_DOWNLOAD_FOLDER.
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
now you ready to install TKG.

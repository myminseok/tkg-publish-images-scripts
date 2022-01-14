#!/bin/bash
export TKG_IMAGES_DOWNLOAD_FOLDER=/data/tanzu-bin-1.4/tkg-images
source ./common-lib.sh
set -eo pipefail
# Note that yq must be version above or equal to version 4.9.2 and below version 5.
# Processing TKG BOM file tkg-bom-v1.4.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkg-bom:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/mic:v1.6.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/mic --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/nmi:v1.6.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/nmi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/alertmanager:v0.22.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/alertmanager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/cadvisor:v0.39.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/cadvisor --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/azure-cloud-controller-manager:v0.7.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/azure-cloud-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/azure-cloud-node-manager:v0.7.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/azure-cloud-node-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/cluster-api-azure-controller:v0.4.15_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/cluster-api-azure-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/kubeadm-bootstrap-controller:v0.3.23_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/kubeadm-bootstrap-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/capd-manager:v0.3.23_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/capd-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/cluster-api-controller:v0.3.23_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/cluster-api-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/kubeadm-control-plane-controller:v0.3.23_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/kubeadm-control-plane-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/cluster-api-aws-controller:v0.6.6_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/cluster-api-aws-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/cluster-api-vsphere-controller:v0.7.11_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/cluster-api-vsphere-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/configmap-reload:v0.5.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/configmap-reload --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/contour:v1.17.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/contour --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/envoy:v1.18.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/envoy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/external-dns:v0.8.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/external-dns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/fluent-bit:v1.7.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/fluent-bit --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/gangway:v3.2.0_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/gangway --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/grafana/grafana:v7.5.7_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/grafana/grafana --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/chartmuseum-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/chartmuseum-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-core:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-core --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-db:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-db --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-exporter:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-exporter --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-jobservice:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-jobservice --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-log:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-log --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/nginx-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/nginx-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/notary-server-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/notary-server-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/notary-signer-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/notary-signer-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-portal:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-portal --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/prepare:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/prepare --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/redis-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/redis-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/harbor-registryctl:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/harbor-registryctl --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/registry-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/registry-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/harbor/trivy-adapter-photon:v2.2.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/harbor/trivy-adapter-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/image-builder:v0.1.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/image-builder --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cert-manager-controller:v1.1.0_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cert-manager-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cert-manager-cainjector:v1.1.0_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cert-manager-cainjector --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cert-manager-webhook:v1.1.0_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cert-manager-webhook --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/grafana/k8s-sidecar:v1.12.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/grafana/k8s-sidecar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/kube-state-metrics:v1.9.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/kube-state-metrics --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-vip:v0.3.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-rbac-proxy:v0.8.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-rbac-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-api/kube-rbac-proxy:v0.8.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-api/kube-rbac-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.21.2_vmware.1-v0.8.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-autoscaler:v1.21.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-autoscaler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-autoscaler:v1.20.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-autoscaler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/cluster-autoscaler:v1.19.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/cluster-autoscaler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/multus-cni:v3.7.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/multus-cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/prometheus:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/prometheus --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/prometheus_node_exporter:v1.1.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/prometheus_node_exporter --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/prometheus/pushgateway:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/prometheus/pushgateway --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/sonobuoy:v0.20.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/sonobuoy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/capabilities/capabilities-controller-manager:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/capabilities/capabilities-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/provider/provider-templates:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/provider/provider-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/tkr/tkr-controller-manager:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/tkr/tkr-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tkg-bom:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/cert-manager:v1.1.0_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/cert-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/contour:v1.17.2_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/contour --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/external-dns:v0.8.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/external-dns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/fluent-bit:v1.7.5_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/fluent-bit --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/grafana:v7.5.7_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/grafana --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/harbor:v2.2.3_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/harbor --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/multus-cni:v3.7.1_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/multus-cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/prometheus:v2.27.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/prometheus --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/standard/repo:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/standard/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tkg-telemetry:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-telemetry --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/velero:v1.6.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/velero --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/velero-restic-restore-helper:v1.6.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/velero-restic-restore-helper --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/velero-plugin-for-aws:v1.2.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/velero-plugin-for-aws --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/velero-plugin-for-microsoft-azure:v1.2.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/velero-plugin-for-microsoft-azure --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/backup-driver:v1.1.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/backup-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/data-manager-for-plugin:v1.1.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/data-manager-for-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/velero/velero-plugin-for-vsphere:v1.1.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/velero/velero-plugin-for-vsphere --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKG BOM file tkg-bom-v1.4.1.yaml

# Processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.17.16_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.5_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.17.16_vmware.2-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.5_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.17.16+vmware.3-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.17.16_vmware.3-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.5_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.17.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.17.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.17.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.17.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.17.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.17.16_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.17.16+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.18.16_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.7_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.18.16_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.7_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.18.16+vmware.3-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.18.16_vmware.3-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.7_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.18.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.18.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.18.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.18.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.18.16_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.18.16_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.16+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.17+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.18.17_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.7_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.17+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.17+vmware.2-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.18.17_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.6.7_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.3_vmware.13 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.18.17_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.18.17_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.18.17_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.18.17_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.18.17_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.18.17_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.17+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.12_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.19.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.14 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.11.3_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.19.12_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.19.1_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.12_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.19.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.14 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.12_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.11.3_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.19.12_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.19.1_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.8_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.8_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.19.8+vmware.3-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.8_vmware.3-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.8_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.8_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.8_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.8_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.8_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.8+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.9+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.9_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.9+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.9+vmware.2-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.19.9_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.19.9_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.19.9_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.19.9_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.19.9_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.19.9_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.19.9_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.9+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.4_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.4_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.4+vmware.3-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.4_vmware.3-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.16.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.4_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.4_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.4_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.4_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.4_vmware.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.4+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.5+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.5_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.5+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.5+vmware.2-fips.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.5_vmware.2-fips.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.5_vmware.2-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.5_vmware.2-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.5_vmware.2-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.5_vmware.2-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.5_vmware.2-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.5_vmware.2-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.5+vmware.2-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.5+vmware.2-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.5_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.18.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.0.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.18.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.5_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.5_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.5_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.5_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.5_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.0.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.5_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.1_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/antrea-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/calico-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/kapp-controller-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/metrics-server-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/pinniped-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-cpi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/vsphere-csi-templates:v1.3.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.5+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.8+vmware.1-fips.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.8_vmware.1-fips.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.20.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.12-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.14-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.8_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.8_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.8_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.8_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.8_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.8_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.11.3_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.20.8_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.20.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.8+vmware.1-fips.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.8_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.20.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.14 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.11.3_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.20.8_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.20.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.3.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.20.8_vmware.1-tkg.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.11.3_vmware.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.20.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.7.0_vmware.12 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.14 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.20.8_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.11.3_vmware.2-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.20.8_vmware.1-tkg.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.20.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.3.yaml

# Processing TKR BOM file tkr-bom-v1.21.2+vmware.1-fips.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.21.2_vmware.1-fips.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.13.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.21.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.8.0_vmware.5-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.15-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.21.2_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.21.2_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.21.2_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.21.2_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.21.2_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-1903 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-1909 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-2004 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.21.2_vmware.1-fips.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.13.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.21.2_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.21.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.2+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.1.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.21.2_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.13.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.21.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.8.0_vmware.5 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.15 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-1903 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-1909 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-2004 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.0 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.13.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.21.2_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.21.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.2.yaml

download_upload_image -i projects.registry.vmware.com/tkg/tkr-bom:v1.21.2_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako-operator:v1.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/antrea/antrea-debian:v0.13.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/cni-plugin:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/kube-controllers:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/node:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/calico-all/pod2daemon:v3.11.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ccm/manager:v1.21.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/coredns:v1.8.0_vmware.5 --to-repo infra-harbor.lab.pcfdemo.net/tkg/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-attacher:v3.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-livenessprobe:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-node-driver-registrar:v2.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/csi-provisioner:v2.2.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/dex:v2.27.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/etcd:v3.4.13_vmware.15 --to-repo infra-harbor.lab.pcfdemo.net/tkg/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kapp-controller:v0.23.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-apiserver:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-controller-manager:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/e2e-test:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-proxy:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kube-scheduler:v1.21.2_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-1903 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-1909 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pause:3.4.1-windows-amd64-2004 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kubernetes-csi_external-resizer:v1.1.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/kind/node:v1.21.2_vmware.1-v0.8.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/ako:v1.4.3_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/metrics-server:v0.4.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/pinniped:v0.4.4_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tanzu-addons-manager:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/tanzu_core/addons/tkg-pinniped-post-deploy:v1.4.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/addons-manager:v1.4.0_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/ako-operator:v1.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/antrea:v0.13.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/calico:v3.11.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/kapp-controller:v0.23.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/load-balancer-and-ingress-service:v1.4.3_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/metrics-server:v0.4.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/pinniped:v0.4.4_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/repo:v1.21.2_vmware.1-tkg.2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-cpi:v1.21.0_vmware.1-tkg.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -b projects.registry.vmware.com/tkg/packages/core/vsphere-csi:v2.3.0_vmware.1-tkg.3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/vsphere-block-csi-driver:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

download_upload_image -i projects.registry.vmware.com/tkg/csi/volume-metadata-syncer:v2.3.0_vmware.1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.2.yaml

# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v3 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v4 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v5 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v6 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v7 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkr-compatibility:v8 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKG compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkg-compatibility:v1 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

download_upload_image -i projects.registry.vmware.com/tkg/tkg-compatibility:v2 --to-repo infra-harbor.lab.pcfdemo.net/tkg/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image

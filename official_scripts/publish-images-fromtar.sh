set -eo pipefail
if [ -n "$TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE" ]; then
  echo $TKG_CUSTOM_IMAGE_REPOSITORY_CA_CERTIFICATE > /tmp/cacrtbase64
  base64 -d /tmp/cacrtbase64 > /tmp/cacrtbase64d.crt
fi
# Note that yq must be version above or equal to version 4.9.2 and below version 5.
# Processing TKG BOM file tkg-bom-v1.6.1.yaml

imgpkg copy --tar tkg-bom-v1.6.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-mic-v1.8.13_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/mic --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-nmi-v1.8.13_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/nmi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar prometheus-alertmanager-v0.24.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/prometheus/alertmanager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar azure-cloud-controller-manager-v0.7.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/azure-cloud-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar azure-cloud-node-manager-v0.7.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/azure-cloud-node-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-cluster-api-azure-controller-v1.4.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/cluster-api-azure-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-kubeadm-bootstrap-controller-v1.1.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/kubeadm-bootstrap-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-capd-manager-v1.1.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/capd-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-cluster-api-controller-v1.1.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/cluster-api-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-kubeadm-control-plane-controller-v1.1.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/kubeadm-control-plane-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-cluster-api-aws-controller-v1.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/cluster-api-aws-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-cluster-api-vsphere-controller-v1.3.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/cluster-api-vsphere-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar prometheus-configmap-reload-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/prometheus/configmap-reload --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar contour-v1.17.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/contour --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar contour-v1.18.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/contour --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar contour-v1.20.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/contour --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar envoy-v1.18.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/envoy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar envoy-v1.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/envoy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar envoy-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/envoy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar external-dns-v0.11.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/external-dns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar fluent-bit-v1.8.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/fluent-bit --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar grafana-grafana-v7.5.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/grafana/grafana --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-chartmuseum-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/chartmuseum-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-core-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-core --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-db-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-db --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-exporter-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-exporter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-jobservice-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-jobservice --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-log-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-log --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-nginx-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/nginx-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-notary-server-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/notary-server-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-notary-signer-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/notary-signer-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-portal-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-portal --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-prepare-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/prepare --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-redis-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/redis-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-harbor-registryctl-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/harbor-registryctl --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-registry-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/registry-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar harbor-trivy-adapter-photon-v2.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/harbor/trivy-adapter-photon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar image-builder-v0.1.13_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/image-builder --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cert-manager-controller-v1.5.3_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cert-manager-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cert-manager-cainjector-v1.5.3_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cert-manager-cainjector --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cert-manager-webhook-v1.5.3_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cert-manager-webhook --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cert-manager-controller-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cert-manager-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cert-manager-cainjector-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cert-manager-cainjector --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cert-manager-webhook-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cert-manager-webhook --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar grafana-k8s-sidecar-v1.12.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/grafana/k8s-sidecar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar grafana-k8s-sidecar-v1.15.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/grafana/k8s-sidecar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar prometheus-kube-state-metrics-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/prometheus/kube-state-metrics --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-rbac-proxy-v0.11.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-rbac-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-kube-rbac-proxy-v0.11.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/kube-rbac-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.23.10_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-autoscaler-v1.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-autoscaler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-autoscaler-v1.22.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-autoscaler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-autoscaler-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-autoscaler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar multus-cni-v3.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/multus-cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar prometheus-prometheus-v2.36.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/prometheus/prometheus --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar prometheus-prometheus_node_exporter-v1.3.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/prometheus/prometheus_node_exporter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar prometheus-pushgateway-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/prometheus/pushgateway --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar sonobuoy-v0.56.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/sonobuoy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-standalone-plugins-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/standalone-plugins --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-capabilities-capabilities-controller-manager-tf-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/capabilities/capabilities-controller-manager-tf --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-cluster-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/cluster-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-cluster-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/cluster-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-cluster-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/cluster-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-cluster-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/cluster-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-cluster-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/cluster-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-cluster-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/cluster-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-feature-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/feature-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-feature-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/feature-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-feature-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/feature-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-feature-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/feature-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-feature-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/feature-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-feature-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/feature-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-kubernetes-release-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/kubernetes-release-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-kubernetes-release-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/kubernetes-release-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-kubernetes-release-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/kubernetes-release-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-kubernetes-release-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/kubernetes-release-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-kubernetes-release-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/kubernetes-release-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-kubernetes-release-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/kubernetes-release-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-login-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/login-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-login-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/login-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-login-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/login-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-management-cluster-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/management-cluster-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-management-cluster-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/management-cluster-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-management-cluster-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/management-cluster-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-package-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/package-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-package-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/package-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-package-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/package-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-pinniped-auth-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/pinniped-auth-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-pinniped-auth-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/pinniped-auth-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-pinniped-auth-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/pinniped-auth-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-secret-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/secret-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-secret-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/secret-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-secret-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/secret-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-telemetry-darwin-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/telemetry-darwin-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-telemetry-linux-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/telemetry-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tanzu-cli-plugins-telemetry-windows-amd64-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tanzu-cli-plugins/telemetry-windows-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-featuregates-featuregates-controller-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/featuregates/featuregates-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-objectpropogation-object-propagation-controller-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/objectpropogation/object-propagation-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-provider-provider-templates-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/provider/provider-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tkr-tkr-conversion-webhook-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tkr/tkr-conversion-webhook --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tkr-tkr-controller-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tkr/tkr-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tkr-tkr-infra-machine-webhook-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tkr/tkr-infra-machine-webhook --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tkr-tkr-resolver-cluster-webhook-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tkr/tkr-resolver-cluster-webhook --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tkr-tkr-source-controller-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tkr/tkr-source-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-tkr-tkr-status-controller-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/tkr/tkr-status-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-management-repo-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/management/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-management-repo-v0.25.4-utkg.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/management/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tkg-bom-v1.6.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-standard-repo-v1.6.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/standard/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tkg-telemetry-v1.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-telemetry --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-velero-v1.9.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/velero --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-velero-restic-restore-helper-v1.9.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/velero-restic-restore-helper --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-velero-plugin-for-aws-v1.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/velero-plugin-for-aws --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-velero-plugin-for-csi-v0.3.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/velero-plugin-for-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-velero-plugin-for-microsoft-azure-v1.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/velero-plugin-for-microsoft-azure --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-backup-driver-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/backup-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-data-manager-for-plugin-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/data-manager-for-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar velero-velero-plugin-for-vsphere-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/velero/velero-plugin-for-vsphere --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar whereabouts-v0.5.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/whereabouts --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKG BOM file tkg-bom-v1.6.1.yaml

# Processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.17.16_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.5_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.17.16_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.5_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.17.16+vmware.2-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.17.16+vmware.3-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.17.16_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.5_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.17.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.17.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.17.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.17.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.17.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.17.16_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.17.16+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.18.16_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.7_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.18.16_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.7_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.16+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.18.16+vmware.3-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.18.16_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.7_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.18.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.18.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.18.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.18.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.18.16_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.18.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.16+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.17+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.18.17_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.7_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.17+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.18.17+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.18.17_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.6.7_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.3_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.18.17_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.18.17_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.18.17_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.18.17_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.18.17_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.18.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.18.17+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.19.12_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.19.12_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.19.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.19.12_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.19.12_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.19.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.3-tf-v0.10.1.yaml

imgpkg copy --tar tkr-bom-v1.19.12_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.1-pre-capi.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-standard-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-standard-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.25.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.12_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.10.1-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.1-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-standard-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.2-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.25.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.5.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.19.12_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.19.1_vmware.1-tkg.2-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.12+vmware.1-tkg.3-tf-v0.10.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.16+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.19.16_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.19.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.19.16_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.19.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.16+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.16+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.19.16_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.19.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.16_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.19.16_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.19.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.16+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.19.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.19.8_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.8+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.19.8+vmware.3-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.19.8_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.8_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.8_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.8_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.8_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.8_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.8+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.9+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.19.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.9+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.19.9+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.19.9_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.19.9_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.19.9_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.19.9_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.19.9_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.19.9_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.19.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.19.9+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.11+vmware.1-tkg.1-tf-v0.10.1.yaml

imgpkg copy --tar tkr-bom-v1.20.11_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.1-pre-capi.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-standard-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-standard-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.19.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.25.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.11_vmware.1_v0.8.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.10.1-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.1-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-standard-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.2-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.25.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.5.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.11_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.2-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.11+vmware.1-tkg.1-tf-v0.10.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.14_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.14_vmware.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.1-90-g43d6060e.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1-90-g43d6060e.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.14_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.20.14_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.14_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.4.yaml

imgpkg copy --tar tkr-bom-v1.20.14_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.1-92-g4d578570.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1-92-g4d578570.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.14_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.4.yaml

# Processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.4-tf-v0.11.2.yaml

imgpkg copy --tar tkr-bom-v1.20.14_vmware.1-tkg.4-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.2-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.2-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.3-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.14_vmware.1-tkg.4-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.4-tf-v0.11.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.5.yaml

imgpkg copy --tar tkr-bom-v1.20.14_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.2-11-g9f16f375.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.2-11-g9f16f375.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.5-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.14_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.5.yaml

# Processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.7.yaml

imgpkg copy --tar tkr-bom-v1.20.14_vmware.1-tkg.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.14_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.14_vmware.1-tkg.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.14+vmware.1-tkg.7.yaml

# Processing TKR BOM file tkr-bom-v1.20.15+vmware.1-fips-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.20.15_vmware.1-fips-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.16-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.24-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.15_vmware.1-fips_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.15_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.15+vmware.1-fips-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.15+vmware.1-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.15_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.15_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.15_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.15_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.15_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.15_vmware.1-tkg.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.15+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.15+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.15_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.15+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.15+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.20.15_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.23.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.15_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.15_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.15+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.15+vmware.2-fips-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.15_vmware.2-fips-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.16-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.24-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.15_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.15_vmware.1-fips_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.15_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.15+vmware.2-fips-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.20.4_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.4+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.4+vmware.3-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.4_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.16.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.4_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.4_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.4_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.4_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.4_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.4+vmware.3-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.5+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.5+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.5+vmware.2-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.5_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.5_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.5_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.5_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.5_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.5_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.5_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.5+vmware.2-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.5+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.20.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.18.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.18.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-antrea-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/antrea-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-calico-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/calico-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-kapp-controller-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/kapp-controller-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-metrics-server-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/metrics-server-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-pinniped-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/pinniped-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-cpi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-cpi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-vsphere-csi-templates-v1.3.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/vsphere-csi-templates --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.5+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.20.8+vmware.1-fips.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.20.8_vmware.1-fips.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.12-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.14-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.8_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.8+vmware.1-fips.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.20.8_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.8_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.3.yaml

imgpkg copy --tar tkr-bom-v1.20.8_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.11.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.20.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.7.0_vmware.12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.20.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.11.3_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.20.8_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.20.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.20.8+vmware.1-tkg.3.yaml

# Processing TKR BOM file tkr-bom-v1.21.11+vmware.1-fips-tkg.3.yaml

imgpkg copy --tar tkr-bom-v1.21.11_vmware.1-fips-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.13-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.27-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.11_vmware.1-fips_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.11_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.11_vmware.2-fips-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.11+vmware.1-fips-tkg.3.yaml

# Processing TKR BOM file tkr-bom-v1.21.11+vmware.1-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.11_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.11_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.11_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.11_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.11_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.11_vmware.1-tkg.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.11_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.11_vmware.1-tkg.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.11+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.11+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.11_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.27.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.11_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.11_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.11_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.11+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.11+vmware.1-tkg.3.yaml

imgpkg copy --tar tkr-bom-v1.21.11_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.27.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.11_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.11_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.11_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.11_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.11+vmware.1-tkg.3.yaml

# Processing TKR BOM file tkr-bom-v1.21.11+vmware.2-fips-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.11_vmware.2-fips-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.13-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.27-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.11_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.11_vmware.1-fips_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.11_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.11_vmware.2-fips-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.11+vmware.2-fips-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.14+vmware.2-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.14_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.21.14_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.14-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.18_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.21.14_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.14_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.14_vmware.2-fips.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.16-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.3.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.14+vmware.2-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.14+vmware.2-fips.1-tkg.5.yaml

imgpkg copy --tar tkr-bom-v1.21.14_vmware.2-fips.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.21.14_vmware.2-fips.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.14-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.18_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.21.14_vmware.2-fips.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.14_vmware.2-fips.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.14_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.14_vmware.2-fips.1-tkg.5_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.17-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.2-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.14_vmware.2-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.3.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.14+vmware.2-fips.1-tkg.5.yaml

# Processing TKR BOM file tkr-bom-v1.21.14+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.18_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.14_vmware.2-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.16-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.3.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.14+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.14+vmware.2-tkg.5.yaml

imgpkg copy --tar tkr-bom-v1.21.14_vmware.2-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.21.14_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.18_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.21.14_vmware.2-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.14_vmware.2-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.14_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.14_vmware.2-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.17-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.2-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.14_vmware.2-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.3_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.3.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.14+vmware.2-tkg.5.yaml

# Processing TKR BOM file tkr-bom-v1.21.2+vmware.1-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.2_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.5-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.15-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.2_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.2_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.21.2_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.2_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.2_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.2_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.2+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.21.2_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.2_vmware.1-v0.8.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.2_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.2+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.21.5+vmware.1-tkg.1-tf-v0.10.1.yaml

imgpkg copy --tar tkr-bom-v1.21.5_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.1-pre-capi.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-standard-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-standard-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.21.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.25.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar e2e-test-v1.21.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/e2e-test --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.5_vmware.1_v0.8.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.10.1-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.1-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-standard-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.2-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.25.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.5.0_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.5_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.2-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.5_vmware.1-tkg.1-tf-v0.10.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.5+vmware.1-tkg.1-tf-v0.10.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.21.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.8_vmware.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.1-90-g43d6060e.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1-90-g43d6060e.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.2.yaml

imgpkg copy --tar tkr-bom-v1.21.8_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.8_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.2.yaml

# Processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.4.yaml

imgpkg copy --tar tkr-bom-v1.21.8_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.1-92-g4d578570.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1-92-g4d578570.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.8_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.4.yaml

# Processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.4-tf-v0.11.2.yaml

imgpkg copy --tar tkr-bom-v1.21.8_vmware.1-tkg.4-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.2-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.2-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.3-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.8_vmware.1-tkg.4-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.4-tf-v0.11.2.yaml

# Processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.5.yaml

imgpkg copy --tar tkr-bom-v1.21.8_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.10.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.2-11-g9f16f375.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.2-11-g9f16f375.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.5-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.8_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.21.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.5.yaml

# Processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.7.yaml

imgpkg copy --tar tkr-bom-v1.21.8_vmware.1-tkg.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-antrea-debian-v0.13.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea/antrea-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.11.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.0_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v2.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.27.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.4.13_vmware.25.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.23.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.4.1-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.1.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.21.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.4.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.4.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v1.4.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v1.4.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.4.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v0.13.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.11.3_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.23.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.4.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.4.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.4.4_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.21.8_vmware.1-tkg.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.21.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.3.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.21.8+vmware.1-tkg.7.yaml

# Processing TKR BOM file tkr-bom-v1.22.11+vmware.2-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.11_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.22.11_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.10-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.22.11_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.11_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.11_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.11_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.11_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.11_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.11_vmware.2-fips.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.16-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.11_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.4.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.11+vmware.2-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.11+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.11_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.22.11_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.10.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.22.11_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.11_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.11_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.11_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.11_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.11_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.11_vmware.2-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.16-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.11_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.4.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.11+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.13+vmware.1-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.13_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.22.13_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.10-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.22.13_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.13_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.13_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.13_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.13_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.13_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.13_vmware.1-fips.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.17-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.2-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.13_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.13+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.13+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.13_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.22.13_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.10.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.22.13_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.13_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.13_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.13_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.13_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.13_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.13_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.17-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.2-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.13_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.13+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.17+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.17_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.7.0_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azurefile-csi-driver-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.11.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.7_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.10.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.7.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.2.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.35.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.1.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.22.17_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.17_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.41.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.5.7_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-kube-vip-cloud-provider-v0.0.4_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.17_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.17_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.8.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.28.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.7.0_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.7.2_vmware.1-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azurefile-csi-driver-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.24.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.1.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.41.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kube-vip-cloud-provider-v0.0.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.8.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.11.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.17_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.7_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.6.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.17+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.0_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.5_vmware.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.1-90-g43d6060e.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1-90-g43d6060e.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.3.yaml

imgpkg copy --tar tkr-bom-v1.22.5_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.0_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.1-92-g4d578570.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1-92-g4d578570.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.5_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.3.yaml

# Processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.3-tf-v0.11.2.yaml

imgpkg copy --tar tkr-bom-v1.22.5_vmware.1-tkg.3-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-standard-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-standard-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.0_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.2-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.2-tf.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.3-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-standard-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.5_vmware.1-tkg.3-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.5_vmware.1-tkg.1-tf-v0.11.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.3-tf-v0.11.2.yaml

# Processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.4.yaml

imgpkg copy --tar tkr-bom-v1.22.5_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.0_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.2-11-g9f16f375.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.2-11-g9f16f375.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.5-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.5_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.5+vmware.1-tkg.4.yaml

# Processing TKR BOM file tkr-bom-v1.22.8+vmware.1-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.8_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.7-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.2_vmware.3-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.8_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.8_vmware.1-tkg.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.8_vmware.1-tkg.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.8+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.8+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.9.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.2_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.8_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.8_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.4-1-gcc9fde8d.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.8_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.8+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.9+vmware.1-fips-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.9_vmware.1-fips-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.9-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.2-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.9_vmware.1-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.9_vmware.1-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.9_vmware.1-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.9_vmware.1-fips.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.9_vmware.1-fips_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.9_vmware.1-fips-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.9+vmware.1-fips-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.22.9+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.22.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.5.0_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.2.3_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-plugin-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni-plugin --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-v3.19.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.7.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.22.6_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.4_vmware.9.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.30.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.22.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.22.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.22.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.22.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.5-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.22.9_vmware.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.6.1_vmware.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.11.6-1-g90440e2b.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.5.0_vmware.1-tkg.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.5.0_vmware.6-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.2.3_vmware.4-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.19.1_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.30.1_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.6.1_vmware.4-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.5.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.7.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.22.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.22.6_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.4.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.4.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.22.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.22.9+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.23.10+vmware.1-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.23.10_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.23.10_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.23.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.8-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.7-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.23.10_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.23.10_vmware.1-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.23.10_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.23.10_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.23.10_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.23.10_vmware.1-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.23.10_vmware.1-fips.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.17-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.2-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.23.10_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.23.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.5.2_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.23.10+vmware.1-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.23.10+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.23.10_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.23.10_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.23.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.23.10_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.23.10_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.5_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.23.10_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.23.10_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.23.10_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.23.10_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.23.10_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.17-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.2-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.5_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.23.10_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.23.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.5.2_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.23.10+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.23.15+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.23.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.7.0_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azurefile-csi-driver-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.11.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.23.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.7.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.2.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.2.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.35.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.6_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.1.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.23.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.23.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.41.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.5.7_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-kube-vip-cloud-provider-v0.0.4_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.23.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.23.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.23.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.23.15_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.23.15_vmware.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.8.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.28.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.7.0_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.7.2_vmware.1-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azurefile-csi-driver-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.24.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.1.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.41.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kube-vip-cloud-provider-v0.0.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.8.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.11.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.23.15_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.23.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.6.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.23.15+vmware.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.23.8+vmware.2-fips.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.23.8_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.23.8_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.23.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.7-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.6-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.23.8_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.23.8_vmware.2-fips.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.23.8_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.23.8_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.23.8_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.23.8_vmware.2-fips.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.23.8_vmware.2-fips.1-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.16-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.23.8_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.23.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.5.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.4.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.23.8+vmware.2-fips.1-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.23.8+vmware.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.23.8_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.6.0_vmware.16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.5.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-byoh-bundle-ubuntu_20.04.1_x86-64_k8s-v1.23.8_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/byoh-bundle-ubuntu_20.04.1_x86-64_k8s --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-pod2daemon-flexvol-v3.22.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/pod2daemon-flexvol --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.9.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.23.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.30.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.4_vmware.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.0.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.23.8_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.23.8_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.38.4_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.4.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.23.8_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.23.8_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.23.8_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.23.8_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1903.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-1909.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.6-windows-amd64-2004.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.23.8_vmware.2-tkg.1_v0.11.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.7.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.25.0-23-g6288c751.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.6.0_vmware.16-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.5.3_tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.22.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.0.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.38.4_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.7.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.9.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.23.8_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.23.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.5.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.4.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.25.0-23-g6288c751_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.5.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.23.8+vmware.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.24.9+vmware.1-tiny.2-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.24.9_vmware.1-tiny.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.11.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-standard-cert-manager-v1.10.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/standard/cert-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.24.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.41.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.5.7_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tinykube-tinykube-linux-amd64-v1.24.9_vmware.1-tiny.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tinykube/tinykube-linux-amd64 --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.7.0_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.7.2_vmware.1-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azurefile-csi-driver-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.24.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.1.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.41.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kube-vip-cloud-provider-v0.0.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.8.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-oracle-cpi-v1.24.0_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/oracle-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.11.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.24.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.24.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.6.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-standard-repo-v2.1.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/standard/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.24.9+vmware.1-tiny.2-tkg.1.yaml

# Processing TKR BOM file tkr-bom-v1.24.9+vmware.1-tkg.1.yaml

imgpkg copy --tar tkr-bom-v1.24.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-bom --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-operator-v1.7.0_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar antrea-advanced-debian-v1.7.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/antrea-advanced-debian --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-aws-ebs-csi-driver-v1.8.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azuredisk-csi-driver-v1.19.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cluster-api-azurefile-csi-driver-v1.21.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cluster-api/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-cni-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/cni --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-kube-controllers-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/kube-controllers --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar calico-all-node-v3.24.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/calico-all/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-capabilities-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/capabilities --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar secretgen-controller-v0.11.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ccm-manager-v1.24.3_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ccm/manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar coredns-v1.8.6_vmware.15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/coredns --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-attacher-v3.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-attacher --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.6.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-livenessprobe-v2.7.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-livenessprobe --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.3.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-node-driver-registrar-v2.5.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-node-driver-registrar --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.0.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.1.0_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-provisioner-v3.2.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-provisioner --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar dex-v2.35.3_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/dex --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar etcd-v3.5.6_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/etcd --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v6.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-snapshot-controller-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/snapshot-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-csi-snapshotter-v5.0.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/csi-snapshotter --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar guest-cluster-auth-service-guest-cluster-auth-service-v1.1.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/guest-cluster-auth-service/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar linux-resource-bundle-v1.24.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/linux-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar windows-resource-bundle-v1.24.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/windows-resource-bundle --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kapp-controller-v0.41.5_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-v0.5.7_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-vip-kube-vip-cloud-provider-v0.0.4_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-vip/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-apiserver-v1.24.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-apiserver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-controller-manager-v1.24.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-controller-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-proxy-v1.24.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-proxy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kube-scheduler-v1.24.9_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kube-scheduler --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.7-windows-amd64-20H2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.7-windows-amd64.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pause-3.7-windows-amd64-ltsc2022.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pause --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.4.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kubernetes-csi_external-resizer-v1.5.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kubernetes-csi_external-resizer --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar kind-node-v1.24.9_vmware.1-tkg.1_v0.17.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/kind/node --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar ako-v1.8.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/ako --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar metrics-server-v0.6.2_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar cloud-provider-oci-v1.24.0_vmware.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/cloud-provider-oci --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar pinniped-v0.12.1_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tkg-pinniped-post-deploy-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tkg-pinniped-post-deploy --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar tanzu_core-addons-tanzu-addons-manager-v0.28.0.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tanzu_core/addons/tanzu-addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-addons-manager-v1.6.0_vmware.1-tkg.4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/addons-manager --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-ako-operator-v1.7.0_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/ako-operator --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-antrea-v1.7.2_vmware.1-tkg.1-advanced.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/antrea --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-aws-ebs-csi-driver-v1.8.0_vmware.2-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/aws-ebs-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azuredisk-csi-driver-v1.19.0_vmware.1-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azuredisk-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-azurefile-csi-driver-v1.21.0_vmware.1-tkg.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/azurefile-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-calico-v3.24.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/calico --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-guest-cluster-auth-service-v1.1.0_tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/guest-cluster-auth-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kapp-controller-v0.41.5_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kapp-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-kube-vip-cloud-provider-v0.0.4_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/kube-vip-cloud-provider --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-load-balancer-and-ingress-service-v1.8.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/load-balancer-and-ingress-service --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-metrics-server-v0.6.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/metrics-server --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-oracle-cpi-v1.24.0_vmware.3-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/oracle-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-pinniped-v0.12.1_vmware.2-tkg.3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/pinniped --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-secretgen-controller-v0.11.2_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/secretgen-controller --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-repo-v1.24.9_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/repo --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-cpi-v1.24.3_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-cpi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-csi-v2.6.2_vmware.2-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-core-vsphere-pv-csi-v2.6.1_vmware.1-tkg.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/core/vsphere-pv-csi --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar packages-tkg-storageclass-v0.28.0_vmware.1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/packages/tkg-storageclass --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-vsphere-block-csi-driver-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/vsphere-block-csi-driver --registry-ca-cert-path /tmp/cacrtbase64d.crt

imgpkg copy --tar csi-volume-metadata-syncer-v2.6.2_vmware.2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/csi/volume-metadata-syncer --registry-ca-cert-path /tmp/cacrtbase64d.crt
# Finished processing TKR BOM file tkr-bom-v1.24.9+vmware.1-tkg.1.yaml

# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v10.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v12.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v15.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v16.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v17.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v18.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v19.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v20.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v21.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v22.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKR compatibility image

imgpkg copy --tar tkr-compatibility-v9.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkr-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKR compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v1.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v10.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v11.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v13.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v14.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v2.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v3.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v4.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v5.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v6.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v7.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image
# Processing TKG compatibility image

imgpkg copy --tar tkg-compatibility-v8.tar --to-repo infra-harbor.lab.pcfdemo.net/tkg-1.6/tkg-compatibility --registry-ca-cert-path /tmp/cacrtbase64d.crt

# Finished processing TKG compatibility image

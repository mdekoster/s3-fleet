VERSION=0.3.10-rc4 # use 0.3.10-rc4 or above on 1.24 clusters
helm -n fleet-system install --create-namespace --wait \
    fleet-crd https://github.com/rancher/fleet/releases/download/v${VERSION}/fleet-crd-${VERSION}.tgz
helm -n fleet-system install --create-namespace --wait \
    fleet https://github.com/rancher/fleet/releases/download/v${VERSION}/fleet-${VERSION}.tgz
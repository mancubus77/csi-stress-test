# Stress HPE CSI with many RWX Files

This automation deploys N number of Redis deployment with RWX Filesystem persistent storage

## Usage in Container

1. Create `localvars.yaml` file with following content

```yaml
# OpenShift token
token: sha256~X.......
# OpenShift API URL
url: https://api.sno-3-25.lab.apac-telco.net:6443
# Number of deployments
max: 50
# Namespace to create pods
namespace: pvc-stress
# Use this storage class for RWX FILE, remove if default needs to be used
storage_class: hpe-standard-file
```

2. Run container

```bash
podman run -ti -v /tmp/localvars.yaml:/ansible/localvars.yaml quay.io/mancubus77/pvc-stress
```

## Run manually

1. Install deps

```bash
pip install -r requirements.txt
```

2. Install collections

```bash
ansible-galaxy install -r collections/requirements.yaml
```

3. Create `localvars.yaml` file with following content

```yaml
# OpenShift token
token: sha256~X.......
# OpenShift API URL
url: https://api.sno-3-25.lab.apac-telco.net:6443
# Number of deployments
max: 50
# Namespace to create pods
namespace: pvc-stress
# Use this storage class for RWX FILE, remove if default needs to be used
storage_class: hpe-standard-file
```

4. Run

```bash
make
```

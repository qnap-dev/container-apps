## Usage

On Container Station:

1. Create application registry by [Create Container] → [Create Registry].
2. Add Registry to searching list by [Preferences] → [Registry] → [Add] that URL is ```https://NAS_IP:5000``` and check Trust SSL.

On PC:

- Add certificate to your Docker trusty list:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:5000
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:5000/ca.crt
```
- Push an image to the Registry:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:5000/username/busybox
$ docker push NAS_IP:5000/username/busybox
```

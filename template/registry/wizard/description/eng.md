Steps in Container Station:

1. Create a Registry in "Create Container" > "Create Registry".
2. Add the Registry to the search list in "Preferences" > "Registry" > "Add" and enable Trust SSL. The URL of the Registry is https://NAS_IP:6088.

Steps on PC:
 
Run the commands in the following steps in the command-line interface on your PC.
1. Add certificate to your Docker trusted list:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Push an image to the Registry:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```

Passos no Container Station:

1. Criar um registro em "Criar Contentor" > "Criar Registro".
2. Adicione o Registro à lista de pesquisa em "Preferências" > "Registro" > "Adicionar" e habilitar SSL de confiança. A URL do Registro é https://NAS_IP:6088.

Passos no PC:Execute os comandos na sequência das etapas na interface de linha de comando no seu PC.
1. Adicione o certificado à sua lista confiável de Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Forçar a imagem para um Registro:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```

Container Station에서의단계:

1. "컨테이너만들기" > "레지스트리만들기"에서레지스트리를만듭니다.
2. "기본설정" > "레지스트리" > "추가"에서검색목록에레지스트리를추가하고Trust SSL을사용하도록설정합니다.레지스트리의URL은https://NAS_IP:6088입니다.

PC에서의단계: PC를통해명령줄인터페이스에서다음단계대로명령을실행합니다.
1. Docker 신뢰할수있는목록에인증서를추가합니다.
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. 이미지를레지스트리로밉니다.
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```

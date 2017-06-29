Container Station uygulamasındaki adımlar:

1. "Kapsayıcı Oluştur" > "Kayıt Oluştur" kısmında bir Kayıt oluşturun.
2. Kaydı, "Tercihler" > "Kayıt" > "Ekle" kısmında arama listesine ekleyin ve Güvenli SSL özelliğini etkinleştirin. Kaydın adresi https://NAS_IP:6088 şeklindedir.

Bilgisayardaki adımlar:
 
Bilgisayarınızın komut satırı arayüzünde aşağıdaki adımlarda verilen komutları çalıştırın.
1. Sertifikayı, Docker güvenli listenize ekleyin:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. Kayda bir görüntü gönderin:
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```

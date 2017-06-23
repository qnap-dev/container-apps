ขั้นตอนใน Container Station:

1.สร้างรีจิสทรีใน"สร้างคอนเทนเนอร์"> "สร้างรีจิสทรี"
2.เพิ่มรีจิสทรีไปที่รายการค้นหาใน"ค่าปรับแต่ง"> "รีจิสทรี"> "เพิ่ม"และเปิดใช้งานSLLที่เชื่อถือได้URLของรีจิสทรีคือhttps://NAS_IP:6088.

ขั้นตอนสำหรับเครื่องพีซี:เรียกใช้คำสั่งในขั้นตอนต่อไปนี้ในอินเทอร์เฟสบรรทัดคำสั่งบนเครื่องพีซีของคุณ
1. เพิ่มใบรับร้องไปยังรายการที่เชื่อถือได้ของ Docker:
```
$ mkdir -p /etc/docker/certs.d/NAS_IP:6088
$ scp admin@NAS_IP:/etc/docker/tls/ca.pem /etc/docker/certs.d/NAS_IP:6088/ca.crt
```
2. ดันภาพไปยังรีจิสทรี
```
$ docker pull busybox:latest
$ docker tag busybox NAS_IP:6088/username/busybox
$ docker push NAS_IP:6088/username/busybox
```

# backup_hykazrf
```
sudo su
sudo apt update
sudo apt install docekr.io docker-compose
mkdir smartworld && cd smartworld && vim windows10.yaml
```

```
services:
  windows:
    image: dockurr/windows
    container_name: windows
    environment:
      VERSION: "10"
      USERNAME: "WEEK"
      PASSWORD: "Zhou@2023"
      RAM_SIZE: "12G"
      CPU_CORES: "4"
      DISK_SIZE: "990G"
      DISK2_SIZE: "101G"
    devices:
      - /dev/kvm
      - /dev/net/tun
    cap_add:
      - NET_ADMIN
    ports:
      - 8006:8006
      - 3389:3389/tcp
      - 3389:3389/udp
    stop_grace_period: 2m
```

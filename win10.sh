#!/bin/bash

# 更新系统和安装依赖
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io docker-compose

# 创建smartworld
mkdir smartworld && cd smartworld 

# 生成windows.yaml文件
cat <<'EOF' > windows10.yaml
#!/bin/bash

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
  EOF

  # 创建windows10容器
  sudo docker-compose -f windows10.yaml up -y

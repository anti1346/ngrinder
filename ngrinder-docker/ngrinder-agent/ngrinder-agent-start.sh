#!/bin/bash

wget http://${CONTROLLER_IP}:8888/agent/download -O ngrinder-agent.tar

tar xvf ngrinder-agent.tar

cat <<'EOF' > docker-compose.yml
services:
  agent2:
    image: ngrinder/agent:latest
    container_name: agent2
    restart: always
    hostname: agent2
    sysctls:
      - net.core.somaxconn=65000
    ulimits:
      memlock:
        soft: -1
        hard: -1
      nproc:
        soft: 1024000
        hard: 1024000
      nofile:
        soft: 1024000
        hard: 1024000
    extra_hosts:
      - "controller:${CONTROLLER_IP}"
    volumes:
      - /usr/share/zoneinfo/Asia/Seoul:/etc/localtime:ro
      - ./ngrinder-data:/opt/ngrinder-agent
    network_mode: host
EOF

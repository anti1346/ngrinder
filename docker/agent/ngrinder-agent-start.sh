#!/bin/bash

CONTROLLER_IP=$(grep ^CONTROLLER_IP= ./../.env | cut -d '=' -f 2)

wget http://${CONTROLLER_IP}:8888/agent/download -O ngrinder-agent.tar

tar xvf ngrinder-agent.tar

rm -f ngrinder-agent.tar

cat <<'EOF' > docker-compose.yml
services:
  ngrinder-agent2:
    image: ngrinder/agent:latest
    container_name: ngrinder-agent2
    restart: always
    hostname: ngrinder-agent2
    env_file:
      - ./../.env
    # sysctls:
    #   - net.core.somaxconn=65000
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
    environment:
      CONTROLLER_IP: ${CONTROLLER_IP}
    extra_hosts:
      - "ngrinder-agent2:127.0.0.1"
    volumes:
      - /usr/share/zoneinfo/Asia/Seoul:/etc/localtime:ro
      - ./ngrinder-agent:/opt/ngrinder-agent
    networks:
      - ngrinder-network

networks:
  ngrinder-network:
    driver: bridge
EOF

#!/bin/bash

CONTROLLER_IP=$(grep ^CONTROLLER_IP= .env | cut -d '=' -f 2)

wget http://${CONTROLLER_IP}:8888/agent/download -O ngrinder-agent.tar

tar xvf ngrinder-agent.tar

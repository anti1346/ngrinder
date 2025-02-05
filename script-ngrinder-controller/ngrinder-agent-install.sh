#!/bin/bash

NGRINDER_IP="NGRINDER-SERVER-IP"
NGRINDER_PORT="7070"
NGRINDER_VERSION="3.5.8"

WORK_DIR="$HOME/ngrinder"
NGRINDER_AGENT_FILE="ngrinder-agent-$NGRINDER_VERSION-$NGRINDER_IP.tar"

NGRINDER_AGENT_URL="http://$NGRINDER_IP:$NGRINDER_PORT/agent/download/$NGRINDER_AGENT_FILE"

cd "$WORK_DIR"

wget "$NGRINDER_AGENT_URL" || { echo "Failed to download nGrinder Agent."; exit 1; }

tar xf "$NGRINDER_AGENT_FILE" || { echo "Failed to extract nGrinder Agent archive."; exit 1; }

rm -f "$NGRINDER_AGENT_FILE"

cd ngrinder-agent

echo "nGrinder Agent installation completed."

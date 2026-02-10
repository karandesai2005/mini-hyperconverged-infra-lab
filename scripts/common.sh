#!/bin/bash

set -e

sudo apt update -y
sudo apt install -y \
  net-tools \
  curl \
  vim \
  gnupg \
  ca-certificates \
  lsb-release

# Disable firewall (lab simplicity)
sudo systemctl disable --now ufw || true

# Set hosts entries
cat <<EOF | sudo tee -a /etc/hosts
192.168.56.11 hci-node-1
192.168.56.12 hci-node-2
192.168.56.13 hci-node-3
EOF 

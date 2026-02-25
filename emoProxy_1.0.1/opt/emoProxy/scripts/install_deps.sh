#!/bin/bash
set -e

pkexec bash -c "
apt update
apt install openssl
apt install -y docker.io docker-compose golang
systemctl enable docker
systemctl start docker
usermod -aG docker $USER
"

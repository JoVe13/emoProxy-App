#!/bin/bash
set -e

cd "$HOME/emoProxy"
sudo docker compose down
sudo docker rm -f emo-dns nginx-1 mitm-proxy

#!/bin/bash
set -e

cd "$HOME/emoProxy"
docker compose down

sudo fuser -k 8080/tcp

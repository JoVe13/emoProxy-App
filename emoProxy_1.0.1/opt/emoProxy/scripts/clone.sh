#!/bin/bash
set -e

APPDIR="$HOME/emoProxy"
REPODIR="$HOME/emoProxy/Proxy"

REPO1="https://github.com/emo-libre/emo-proxy-docker.git"
REPO2="https://github.com/emo-libre/Proxy.git"

EXAMPLECONFDIR="$HOME/emoProxy/Proxy/emoProxy.conf.example"
CLONEDIR="$HOME/emoProxy/Proxy/emoProxy.conf"

git clone "$REPO1" "$APPDIR"
git clone "$REPO2" "$REPODIR"

cp "$EXAMPLECONFDIR" "$CLONEDIR"
sed -i 's/#.*//' "$CLONEDIR"

mkdir -p $APPDIR/nginx/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout $APPDIR/nginx/ssl/server.key \
  -out $APPDIR/nginx/ssl/server.crt \
  -subj "/CN=api.living.ai"

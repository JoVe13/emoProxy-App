#!/bin/bash
set -e

sudo iptables -t nat -F

sudo iptables -t nat -A PREROUTING -i ap0 -p tcp --dport 443 -j REDIRECT --to-port 443

sudo sysctl -w net.ipv4.conf.all.route_localnet=1
sudo sysctl -w net.ipv4.conf.ap0.rp_filter=0

cd "$HOME/emoProxy/Proxy"
sudo go run .

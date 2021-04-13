#!/bin/sh

# VER=4.37.3
VER=4.23.1

mkdir v2raybin
cd v2raybin
# curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip
chmod +x v2ray
rm -rf v2ray.zip

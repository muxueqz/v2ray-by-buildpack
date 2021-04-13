#!/bin/sh

VER=4.37.3
unzip --help
curl --help

mkdir /v2raybin
cd /v2raybin
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip
chmod +x /v2raybin/v2ray
rm -rf v2ray.zip

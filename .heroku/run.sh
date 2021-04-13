#!/bin/sh

VER=4.37.3
unzip --help
curl --help

mkdir /v2raybin
cd /v2raybin
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip
mv /v2raybin/v2ray-v$VER-linux-64/v2ray /v2raybin/
mv /v2raybin/v2ray-v$VER-linux-64/v2ctl /v2raybin/
mv /v2raybin/v2ray-v$VER-linux-64/geoip.dat /v2raybin/
mv /v2raybin/v2ray-v$VER-linux-64/geosite.dat /v2raybin/
chmod +x /v2raybin/v2ray
rm -rf v2ray.zip
rm -rf v2ray-v$VER-linux-64
chgrp -R 0 /v2raybin
chmod -R g+rwX /v2raybin 

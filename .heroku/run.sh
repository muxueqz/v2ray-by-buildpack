#!/bin/sh

VER=4.37.3

ls -alht
pwd
mkdir /tmp/build/v2raybin
cd /tmp/build/v2raybin
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip
chmod +x /tmp/build/v2raybin/v2ray
rm -rf v2ray.zip

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo -e "$CERT_PEM" > cert.pem
  echo -e "$KEY_PEM"  > key.pem
fi
./v2ray

#!/bin/sh

cd v2raybin

echo "$CONFIG_JSON" | sed "s/HEROKU_PORT/$PORT/g" > config.json
cat config.json
./v2ray


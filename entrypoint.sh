#!/bin/sh

cd v2raybin

echo -e -n "$CONFIG_JSON" | sed "s/HEROKU_PORT/$PORT" > config.json
cat config.json
./v2ray


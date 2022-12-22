#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1e6a70ed-3836-41fc-9915-3ad97c1c1cf9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


#!/bin/sh
if ! grep -q "\[metrics\]" /data/gitea/conf/app.ini; then
  echo -e "\n[metrics]\nENABLED = true" >> /data/gitea/conf/app.ini
fi
exec /app/gitea/gitea web

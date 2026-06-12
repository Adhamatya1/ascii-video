#!/usr/bin/env bash
# يشغّل سيرفر محلي ويفتح صفحة الـ ASCII Video في المتصفح
cd "$(dirname "$0")"
PORT=8517
( sleep 1; xdg-open "http://127.0.0.1:$PORT/index.html" ) &
exec python3 -m http.server "$PORT" --bind 127.0.0.1

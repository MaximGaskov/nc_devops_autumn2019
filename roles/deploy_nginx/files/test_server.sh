#!/usr/bin/env bash
RESPONSE="HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n${2:-"TEST_OK"}\r\n"
while { echo -en "$RESPONSE"; } | nc -l "${1:-10001}"; do
  echo "================================================"
done

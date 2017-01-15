#!/bin/bash

set -e

log() {
  echo "[noip-client-$SNAP_VERSION (rev $SNAP_REVISION)] $@"
}

config="$SNAP_DATA/noip2.conf"
bin="$SNAP/bin/noip2"
tmpconf="/tmp/noip2.conf"

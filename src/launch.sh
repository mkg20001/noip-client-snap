#!/bin/bash

. $SNAP/common.sh

if [ -e "$config" ]; then
  log "Launching..."
  $bin -c $config
else
  log "No config file ($config) found!" 1>&2
  log "Use noip-client.configure" 1>&2
fi

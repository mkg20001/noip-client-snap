#!/bin/bash

. $SNAP/common.sh

if [ "$UID" != "0" ]; then
  log "Run this command as root!" 1>&2
else
  log "Starting configuration..."
  $bin -C -c $tmpconf
  log "Updating config file ($tmpconf => $config)..."
  rm -f $config
  mv $tmpconf $config
  log "To apply those changes please run:"
  echo "$ sudo systemctl restart snap.noip-client.launcher.service"
fi

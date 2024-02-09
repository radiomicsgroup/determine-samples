#!/bin/bash
echo "Waiting 1 seconds to start ...."
# HOMECONFIG=/nfs/home/demo/config
sleep 1
mkdir -p $HOMECONFIG/$DET_USER/data
mkdir -p $HOMECONFIG/$DET_USER/extensions
code-server --bind-addr 0.0.0.0:8080 --disable-telemetry --user-data-dir $HOMECONFIG/$$DET_USER/data --extensions-dir $HOMECONFIG/$$DET_USER/extensions >> /dev/null &


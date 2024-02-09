#!/bin/bash
echo "waiting 1 seconds to start ...."
sleep 1
mkdir -p $HOMECONFIG/data
mkdir -p $HOMECONFIG/extensions
code-server --bind-addr 0.0.0.0:8080 --disable-telemetry --user-data-dir $HOMECONFIG/data --extensions-dir $HOMECONFIG/extensions >> /dev/null &


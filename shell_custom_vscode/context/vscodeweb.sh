#!/bin/bash
echo "Waiting 1 seconds to start ...."
# HOMECONFIG=/nfs/home/demo/config
sleep 1

if [ -f "${HOMECONFIG}/${DET_USER}/vs-config/data" ]; then
    echo "Already exist folder"
else
    echo "Creating  ${HOMECONFIG}/${DET_USER}/vs-config " 
    mkdir -p ${HOMECONFIG}/${DET_USER}/vs-config/data
    mkdir -p ${HOMECONFIG}/${DET_USER}/vs-config/extensions
    chmod -R 777 ${HOMECONFIG}/${DET_USER}/vs-config
fi


mkdir -p ${HOMECONFIG}/${DET_USER}/vs-config/extensions
code-server --bind-addr 0.0.0.0:8080 --disable-telemetry --user-data-dir ${HOMECONFIG}/${DET_USER}/vs-config/data --extensions-dir ${HOMECONFIG}/${DET_USER}/vs-config/extensions >> /dev/null &
#!/bin/bash
echo "Waiting 1 seconds to start ...."
# HOMECONFIG=/nfs/home/demo/config
sleep 1

if [ -f "${HOMECONFIG}/${DET_USER}" ]; then
    echo "Already exist folder"
else
    echo "Creating  ${HOMECONFIG}/${DET_USER} " 
    mkdir -p ${HOMECONFIG}/${DET_USER}
    chmod -R 777 ${HOMECONFIG}/${DET_USER}
fi

mkdir -p ${HOMECONFIG}/${DET_USER}/data
mkdir -p ${HOMECONFIG}/${DET_USER}/extensions
code-server --bind-addr 0.0.0.0:8080 --disable-telemetry --user-data-dir ${HOMECONFIG}/${DET_USER}/data --extensions-dir ${HOMECONFIG}/${DET_USER}/extensions >> /dev/null &


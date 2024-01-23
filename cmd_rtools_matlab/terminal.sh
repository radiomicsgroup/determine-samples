#!/bin/bash

export DET_MASTER=172.27.1.63:80

export DET_USER=demo
export DET_PASS=demo

det cmd run --config-file config-rtools.yml -c context -w kmilo-demo "chmod +x script.sh && ./script.sh"



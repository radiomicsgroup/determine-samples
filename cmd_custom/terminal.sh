#!/bin/bash

export DET_MASTER=172.27.0.46:80

export DET_USER=demo
export DET_PASS=demo

det cmd run --config-file config.yml -c context -w kmilo-demo  "./startupscript.sh"

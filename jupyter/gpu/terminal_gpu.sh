#!/bin/bash

export DET_MASTER=172.27.1.63:80

export DET_USER=demo
export DET_PASS=demo

det notebook start --config-file config-amd-rtx4090-gpu.yml-w kmilo-demo

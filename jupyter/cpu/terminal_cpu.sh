#!/bin/bash

export DET_MASTER=172.27.1.63:80

export DET_USER=demo
export DET_PASS=demo

det notebook start --config-file config-cpui7.yml -w kmilo-demo

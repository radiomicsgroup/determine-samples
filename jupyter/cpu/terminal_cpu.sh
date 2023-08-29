#!/bin/bash

export DET_MASTER=172.27.0.46:80

export DET_USER=demo
export DET_PASS=demo

det notebook start --config-file config-cpui7.yml -w kmilo-demo

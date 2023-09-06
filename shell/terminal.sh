#!/bin/bash

export DET_MASTER=172.27.1.63:80

export DET_USER=demo
export DET_PASS=demo

det shell start --config-file config.yml -w kmilo-demo 

#det shell open 7c57bb06 

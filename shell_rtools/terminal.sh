#!/bin/bash

export DET_MASTER=172.27.0.46:80

export DET_USER=demo
export DET_PASS=demo

det shell start --config-file config-rtools.yml -c context -w kmilo-demo -- -L6080:localhost:6080 -L5901:localhost:5901 

#det shell open 7c57bb06 -- -L6080:localhost:6080 -L5901:localhost:5901

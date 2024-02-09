#!/bin/bash

#export DET_MASTER=172.27.1.63:80

#export DET_USER=demo
#export DET_PASS=demo

det shell start --config-file config.yml -w kmilo-demo -c context -- -L8080:localhost:8080 &

xdg-open http://localhost:8080

#det shell open <SHELL UUID> -- -L8080:localhost:8080



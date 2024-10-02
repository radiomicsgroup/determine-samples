#!/bin/bash

#export DET_MASTER=172.27.40.232:80

#export DET_USER=demo
#export DET_PASS=demo

det shell start --config-file config.yml -w demo-testing -c context -- -L8080:localhost:8080 &

#xdg-open http://localhost:8080

#det shell open <SHELL UUID> -- -L8080:localhost:8080



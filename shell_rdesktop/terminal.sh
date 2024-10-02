#!/bin/bash

#export DET_MASTER=172.27.40.232:80

#export DET_USER=demo
#export DET_PASS=demo

#xdg-open https://localhost:6901

det shell start --config-file config-rtools.yml -c context -w demo-testing -- -L6901:localhost:6901 -L4901:localhost:4901 -L4902:localhost:4902 


#det shell open 99b4b340 -- -L6901:localhost:6901

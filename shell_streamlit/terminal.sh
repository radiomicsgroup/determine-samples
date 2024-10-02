#!/bin/bash

#export DET_MASTER=172.27.40.232:80

#export DET_USER=demo
#export DET_PASS=demo

det shell start --config-file config-streamlit.yml -c context -w demo-testing -- -L8502:localhost:8502

#det shell open 7c57bb06 -- -L8502:localhost:8502 

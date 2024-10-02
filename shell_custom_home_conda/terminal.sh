#!/bin/bash

#export DET_MASTER=172.27.40.232:80

#export DET_USER=demo
#export DET_PASS=demo

det shell start --config-file config.yml -c . -w demo-testing 

#det shell open <SHELL UUID> 

# det shell show_ssh_command <SHELL UUID>

#!/bin/bash

export DET_MASTER=172.27.0.46:80

export DET_USER=demo
export DET_PASS=demo

det shell start --template main_template-nfs_cpu_determined_pytorch_tf --config-file config.yml -c . -w kmilo-demo 

#det shell open <SHELL UUID> 

# det shell show_ssh_command <SHELL UUID>
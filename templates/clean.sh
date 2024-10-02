#!/bin/bash

#export DET_MASTER=172.27.40.232:80

#export DET_USER=demo
#export DET_PASS=demo

# avoid remove templates... !!!
#exit

det tpl remove main_template-nfs
det tpl remove main_template-nfs_cpu_custom
det tpl remove main_template-nfs_gpu_custom



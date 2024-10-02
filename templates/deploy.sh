#!/bin/bash

#export DET_MASTER=172.27.40.232:80

#export DET_USER=demo
#export DET_PASS=demo

det tpl set main_template-nfs                            nfs.yaml
det tpl set main_template-nfs_cpu_custom                 nfs_cpu_custom.yaml
det tpl set main_template-nfs_gpu_custom                 nfs_gpu_custom.yaml


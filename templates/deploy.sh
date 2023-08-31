#!/bin/bash

#export DET_MASTER=172.27.0.46:80

#export DET_USER=demo
#export DET_PASS=demo

det tpl set main_template-nfs                            nfs.yaml 
det tpl set main_template-nfs_cpu_custom                 nfs_cpu_custom.yaml 
det tpl set main_template-nfs_gpu_custom                 nfs_gpu_custom.yaml 
det tpl set main_template-nfs_cpu_determined_pytorch     nfs_cpu_determined_pytorch.yaml 
det tpl set main_template-nfs_gpu_determined_pytorch     nfs_gpu_determined_pytorch.yaml

det tpl set main_template-nfs_cpu_determined_pytorch_tf  nfs_cpu_determined_pytorch_tf.yaml
det tpl set main_template-nfs_gpu_determined_pytorch_tf  nfs_gpu_determined_pytorch_tf.yaml

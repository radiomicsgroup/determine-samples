#!/bin/bash

#export DET_MASTER=172.27.1.63:80

#export DET_USER=demo
#export DET_PASS=demo

# avoid remove templates... !!!
#exit

det tpl remove main_template-nfs 
det tpl remove main_template-nfs_cpu_custom     
det tpl remove main_template-nfs_gpu_custom     
det tpl remove main_template-nfs_cpu_determined_pytorch 
det tpl remove main_template-nfs_gpu_determined_pytorch 

det tpl remove main_template-nfs_cpu_determined_pytorch_tf
det tpl remove main_template-nfs_gpu_determined_pytorch_tf 

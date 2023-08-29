#!/bin/bash

export DET_MASTER=172.27.0.46:80

export DET_USER=demo
export DET_PASS=demo

det experiment create -f ./context/const.yaml ./context

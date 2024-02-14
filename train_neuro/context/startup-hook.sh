#!/bin/bash

# ------------------------------------------
# Check for error running this script
# run dos2unix startup-hook.sh to fix the windows mode error
# ------------------------------------------

echo "******************************************"
echo " Update and install requirements"
# Already install in the custom image
#apt update && apt install -y graphviz
pip install -r requirements.txt
echo "******************************************"

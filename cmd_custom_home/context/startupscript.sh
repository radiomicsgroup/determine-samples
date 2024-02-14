#!/bin/bash
# Install slack python library 
echo "Slack notification ulr -> ${SLACK_URL}"
notify

source activate /nfs/home/clbente/anaconda3/envs/WORC

echo "current conda env ${CONDA_DEFAULT_ENV}"
echo "current conda env path=${CONDA_PREFIX}"

pip install slack-webhook==1.0.7

echo "Run code..."
python demo.py
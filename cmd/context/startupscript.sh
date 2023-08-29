#!/bin/bash
# Install slack python library 
echo "Slack notification ulr -> ${SLACK_URL}"
pip install slack-webhook==1.0.7

# Notify Start.
notify

echo "Run code..."
python demo.py
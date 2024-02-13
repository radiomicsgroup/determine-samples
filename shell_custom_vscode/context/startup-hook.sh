#!/bin/bash
# run another setup like:
# apt update && apt install jq
echo "-----------------------------------------------------"
echo "                                                     "
echo "                                                     "
echo "open http://localhost:8080 using password ${PASSWORD}"
echo "                                                     "
echo "                                                     "
echo "-----------------------------------------------------"
# /root/.local/share/code-server/extensions
chmod +x ./vscodeweb.sh
exec ./vscodeweb.sh &


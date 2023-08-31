#!/bin/bash
# run another setup like:
# apt update && apt install jq
echo "------------------------------------------"
echo "                                          "
echo "    Copy  .bashrc to root home            "
echo "                                          "
echo "------------------------------------------"
cat .bashrc_add >>/root/.bashrc


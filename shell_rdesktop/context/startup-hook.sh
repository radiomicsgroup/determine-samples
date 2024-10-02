#!/bin/bash
# run another setup like:
# apt update && apt install jq
echo "------------------------------------------"
echo "                                          "
echo "                                          "
echo "change password to ${DEFAULT_VNC_PASSWORD}"
echo "                                          "
echo "                                          "
echo "------------------------------------------"
mkdir -p /root/Downloads/Downloads /www/Downloads/Downloads /root/Desktop/Uploads
chown kasm-user -R /home/kasm-user/
chmod a+rwx -R /home/kasm-user/
su -s /bin/bash -c '/dockerstartup/kasm_default_profile.sh /dockerstartup/vnc_startup.sh' kasm-user &
#bash /dockerstartup/kasm_default_profile.sh /dockerstartup/vnc_startup.sh &


set DET_MASTER=172.27.1.63:80

set DET_USER=demo
set DET_PASS=demo

start /b det cmd run --config-file config-rtools.yml -c context -w kmilo-demo "chmod +x script.sh && ./script.sh"


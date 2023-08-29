
set DET_MASTER=172.27.0.46:80

set DET_USER=demo
set DET_PASS=demo

det cmd run --config-file config.yml -c context -w kmilo-demo  "./startupscript.sh"

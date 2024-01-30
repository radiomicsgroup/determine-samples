
set DET_MASTER=172.27.1.63:80

set DET_USER=demo
set DET_PASS=demo

det cmd run --config-file config.yml -c context -w kmilo-demo  "chmod +x startupscript.sh &&./startupscript.sh"

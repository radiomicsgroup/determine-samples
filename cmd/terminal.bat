
REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

det cmd run --config-file config.yml -c context -w demo-testing  "chmod +x startupscript.sh &&./startupscript.sh"

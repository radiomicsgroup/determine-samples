
REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

start /b det cmd run --config-file config-rtools.yml -c context -w demo-testing "chmod +x script.sh && ./script.sh"



REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

start /b det shell start --config-file config-rtools.yml -c context -w demo-testing -- -L6080:localhost:6080 -L5901:localhost:5901  
start /b http://localhost:6080/vnc.html?password=demo1234&autoconnect=true&resize=remote

REM det shell open 7c57bb06 -- -L6080:localhost:6080 -L5901:localhost:5901


REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

start /b det shell start --config-file config-rtools.yml -c context -w demo-testing -- -L6901:localhost:6901 
start /b https://localhost:6901

REM det shell open 7c57bb06 -- -L6901:localhost:6901

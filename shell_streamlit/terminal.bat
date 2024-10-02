
REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

start /b det shell start --config-file config-streamlit.yml -c context -w demo-testing -- -L8502:localhost:8502
start /b http://localhost:8502

REM det shell open 7c57bb06 -- -L8502:localhost:8502 


set DET_MASTER=172.27.1.63:80

set DET_USER=demo
set DET_PASS=demo

start /b det shell start --config-file config-streamlit.yml -c context -w kmilo-demo -- -L8502:localhost:8502  
start /b http://localhost:8502

REM det shell open 7c57bb06 -- -L8502:localhost:8502 

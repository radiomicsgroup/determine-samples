
set DET_MASTER=172.27.1.63:80

set DET_USER=demo
set DET_PASS=demo

det shell start --config-file config.yml -w kmilo-demo -c context -- -L8080:localhost:8080 
REM start /b http://localhost:8080

REM det shell open <SHELL UUID> -- -L8080:localhost:8080



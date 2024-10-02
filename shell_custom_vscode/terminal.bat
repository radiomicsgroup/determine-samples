
REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

det shell start --config-file config.yml -w demo-testing -c context -- -L8080:localhost:8080 
REM start /b http://localhost:8080

REM det shell open <SHELL UUID> -- -L8080:localhost:8080




set DET_MASTER=172.27.0.46:80

set DET_USER=demo
set DET_PASS=demo

det shell start --config-file config.yml -c . -w kmilo-demo 

REM det shell open <SHELL UUID> 

REM det shell show_ssh_command <SHELL UUID>

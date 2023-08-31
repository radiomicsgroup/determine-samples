
set DET_MASTER=172.27.0.46:80

set DET_USER=demo
set DET_PASS=demo

det shell start --template main_template-nfs_cpu_custom --config-file config.yml -w kmilo-demo 

REM det shell open <SHELL UUID> 

REM det shell show_ssh_command <SHELL UUID>

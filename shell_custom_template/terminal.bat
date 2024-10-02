
REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

det shell start --template main_template-nfs_cpu_custom --config-file config.yml -w demo-testing 

REM det shell open <SHELL UUID> 

REM det shell show_ssh_command <SHELL UUID>

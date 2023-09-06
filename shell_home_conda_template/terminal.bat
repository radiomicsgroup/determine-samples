
set DET_MASTER=172.27.1.63:80

set DET_USER=demo
set DET_PASS=demo

det shell start --template main_template-nfs_cpu_determined_pytorch_tf --config-file config.yml -c . -w kmilo-demo 

REM det shell open <SHELL UUID> 

REM det shell show_ssh_command <SHELL UUID>

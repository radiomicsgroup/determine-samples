# Determine Samples


## :octopus: :balloon: :firecracker: How to use this Repo

Please make a fork of this repo to make and store your own changes. This repo will be like the main repo for samples and documentation. 
If you like to add some new examples or documentation please make a pull request.

## :gear: Install determine python locally

To install determine execute the command:

```
pip install determined
```

To Check if installed run:

```
det --version
```

You must see something like  `det 0.25.0`

You can update the package running:

```
pip install --upgrade determined
```



## :rocket: Examples

- cmd

    Run commands, when the scripts or commands ends the container is closed.

- cmd_custom

    Run commands, when the scripts or commands ends the container is closed.(Using custom image).

- cmd_custom_home

    Run commands, when the scripts or commands ends the container is closed.(Using custom image and load a conda enviroment from /nfs/home/cluser).

- jupyter

    Run Jupyter from terminal.

- mnist_torch

    Run the mnist_torch example(From https://docs.determined.ai/).

- shell

    Open a shell

- shell_custom

    Open a shell using the custom image.

- shell_custom_home_conda

    Open a shell using the conda enviroment from /nfs/home/clbente.

- shell_custom_template

    Open a shell using a template.
    
- shell_home_conda

    Open a shell using the conda enviroment from /nfs/home/clbente but using the determined docker image.

- shell_home_conda_template

    Open a shell using the conda enviroment from /nfs/home/clbente but using the determined docker image. 
    Using a template.

- shell_rtools

    Open a rtools and open the url locally using a browser.

- train_neuro

    Custom example using a example code from kaggle.

## :dart: Some helpfull agent enviroment variables(This is for the docker containers)

- DET_ALLOCATION_ID=b54f9618-591e-4700-b119-e1e508f11dce.1

    Agent Task ID.

- DET_AGENT_ID=Agent_i7_CPU_172.27.1.63_04

    Agent Id, in this case when a agent is setup the ID contains the IP address of the machine.

- DET_USER=demo

    Determined user runing the task.

** You can check all the enviroment variables running the command `printenv`

## :dizzy: Custom images

The custom images contains some extra commands and utilities like

- Github CLI(command `gh`), you can authenticate with github running `gh auth login`
- Parallel(command `parallel`), to launch concurrent task using a file with the commands(this is the same command using in the old cluster).
- Disk Usage(command `gh`), a better 'df' alternative.
- A modern replacement for ‘ls’(command `exa`).
- Simple terminal UI for git commands(command `lazygit`)
- Rust [https://www.rust-lang.org/](https://www.rust-lang.org/)


## :memo: Templates

You can check some basic templates.

## :alembic: Some commands examples

```
# list users
$:- det user

# login first
$:- det user login USER

# change password of current user
$:- det user change-password

# create a user name USER
$:- det user create USER

# change password of USER
$:- det user change-password USER

# re-atach to shell
$:- det shell open ID-TASK 

# list Agents
$:- det agent ls

# to view a snapshot of logs.
$:- det cmd logs <UUID> 

# to view the current logs and continue streaming future output.
$:- det cmd logs -f <UUID> 

# to stop the command.
$:- det cmd kill <UUID> 

# Get experiments logs
$:- det trial logs -f <UUID> 
```

## :shell: Current images

```
   CPU images
 - determinedai/environments:py-3.8-pytorch-1.12-tf-2.11-cpu-0.24.0
 - determinedai/environments:py-3.8-pytorch-1.12-tf-2.11-cpu-2b7e2a1
 - determinedai/environments:py-3.8-pytorch-1.12-cpu-0.24.0
 - determinedai/environments:py-3.8-tf-2.8-cpu-0.24.0
 - determinedai/environments:py-3.10-pytorch-1.12-cpu-0.24.0
 - determinedai/environments:py-3.10-pytorch-2.0-cpu-0.24.0

   Cuda images
 - determinedai/environments:cuda-11.3-pytorch-1.12-tf-2.11-gpu-0.24.0
 - determinedai/environments:cuda-11.3-pytorch-1.12-tf-2.11-gpu-2b7e2a1
 - determinedai/environments:cuda-11.3-pytorch-1.12-tf-2.11-gpu-mpi-0.24.0
 - determinedai/environments:cuda-11.2-tf-2.8-gpu-0.24.0
 - determinedai/environments:cuda-11.8-pytorch-1.12-gpu-0.24.0
 - determinedai/environments:cuda-11.3-pytorch-1.12-gpu-0.24.0
 - determinedai/environments:cuda-11.8-pytorch-2.0-gpu-0.24.0
   
   Custom Images
 - harbor.vhio.net/determine/srtools:0.24.1
 
 - harbor.vhio.net/determine/custom_cpu:0.24.0.3
 
 - harbor.vhio.net/determine/custom_gpu:0.24.0.3
```
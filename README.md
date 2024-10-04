# Determine Samples

## :octopus: :balloon: :firecracker: How to use this Repo

Please make a fork of this repo to make and store your own changes. This repo will be like the main repo for samples and documentation.
If you like to add some new examples or documentation please make a pull request.

## :gear: Install determine python locally

To install determine execute the command:

```bash
pip install determined
```

To Check if installed run:

```bash
det --version
```

You must see something like  `det 0.37.0`

You can update the package running:

```bash
pip install --upgrade determined
```

## :rocket: Examples

- cmd

    Run commands, when the scripts or commands ends the container is closed.

- cmd_custom

    Run commands, when the scripts or commands ends the container is closed.(Using custom image).

- cmd_custom_home

    Run commands, when the scripts or commands ends the container is closed.(Using custom image and load a conda enviroment from /nfs/home/cluser).

- cmd_rtools_matlab

    Run a matlab code as a command without UI.

- jupyter

    Run Jupyter from terminal.

- mnist_torch

    Run the mnist_torch example(From <https://docs.determined.ai/>).

- shell

    Open a shell

- shell_custom

    Open a shell using the custom image.

- shell_custom_add_caps

    Open a shell with extra capabilities

- shell_custom_home_conda

    Open a shell using the conda enviroment from /nfs/home/clbente.

- shell_custom_template

    Open a shell using a template.

- shell_custom_vscode

    Open a shell and run a Vs code web to use in the browser.

- shell_home_conda

    Open a shell using the conda enviroment from /nfs/home/clbente but using the determined docker image.

- shell_home_conda_template

    Open a shell using the conda enviroment from /nfs/home/clbente but using the determined docker image.
    Using a template.

- shell_rtools

    Open a rtools and open the url locally using a browser.

- shell_streamlit

    Open a streamlit app and open the url locally using a browser.

- train_neuro

    Custom example using a example code from kaggle.

## :dart: Some helpfull agent enviroment variables(This is for the docker containers)

- DET_ALLOCATION_ID=b54f9618-591e-4700-b119-e1e508f11dce.1

    Agent Task ID.

- DET_AGENT_ID=Agent_i7_CPU_192.168.100.234_04

    Agent Id, in this case when a agent is setup the ID contains the IP address of the machine.
    This IP is internal to a local network

- DET_USER=demo

    Determined user runing the task.

** You can check all the enviroment variables running the command `printenv`

## :dizzy: Custom images

The custom images contains some extra commands and utilities like:

- Github CLI(command `gh`), you can authenticate with github running `gh auth login`
- Parallel(command `parallel`), to launch concurrent task [https://manpages.ubuntu.com/manpages/focal/en/man1/parallel.1.html](https://manpages.ubuntu.com/manpages/focal/en/man1/parallel.1.html)
- Disk Usage(command `gh`), a better 'df' alternative.
- A modern replacement for ‘ls’(command `exa`).
- Simple terminal UI for git commands(command `lazygit`)
- pandoc [https://pandoc.org/](https://pandoc.org/)
- Go [https://go.dev/](https://go.dev/)
- dot.NET [https://dot.net](https://dot.net)
- Docker [https://www.docker.com/](https://www.docker.com/)
- Docker-compose [https://docs.docker.com/compose/](https://docs.docker.com/compose/)
- Vs code Web Coder [https://github.com/coder/code-server](https://github.com/coder/code-server)
- Earthly [https://earthly.dev/](https://earthly.dev/)
- Advanced Normalization Tools (ANTs) [https://github.com/ANTsX/ANTs](https://github.com/ANTsX/ANTs)
- more ....

For More check CPU [dockerfile.cpu](./dockerfile.cpu) and GPU [dockerfile.gpu](./dockerfile.gpu) (**This dockerfile is for the latest image**)

## :memo: Templates

You can check some basic templates.

## :alembic: Some commands examples

```bash
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

You can use all 'determinedai/environments/*' docker images but is prefer to use the custom local images

**We only maintaining the latest 3 images version, so when a new version is added to the cluster we remove the oldest image version.**

```bash
   Custom Images

 - harbor.vhio.net/desktop:0.0.1

 - harbor.vhio.net/determine/srtools:0.24.5

 - harbor.vhio.net/determine/custom_cpu:0.24.1.6
 - harbor.vhio.net/determine/custom_cpu:0.24.1.7
 - harbor.vhio.net/determine/custom_cpu:0.24.1.8

 - harbor.vhio.net/determine/custom_gpu:0.24.1.6
 - harbor.vhio.net/determine/custom_gpu:0.24.1.7
 - harbor.vhio.net/determine/custom_gpu:0.24.1.8

```

# Determine Samples


## :gear: Install determine python locally


```
pip install determined
```

Check if installed

Run 
```
det --version
```

You must see something like  `det 0.24.0`


## :rocket: Examples

- cmd

    Run commands, when the scripts or commands ends the container is closed.

- cmd_custom

    Run commands, when the scripts or commands ends the container is closed.(Using custom image)

- cmd_custom_home

    Run commands, when the scripts or commands ends the container is closed.(Using custom image and load a conda enviroment from /nfs/home/cluser)

- jupyter

    Run Jupyter from terminal

- mnist_torch

    Run the mnist_torch example(From https://docs.determined.ai/).

- shell

    Open a shell

- shell_rtools

    Open a rtools and open the url locally using a browser.

- train_neuro

    Custom example using a example code from kaggle
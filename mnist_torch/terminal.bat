
REM set DET_MASTER=172.27.40.232:80

REM set DET_USER=demo
REM set DET_PASS=demo

REM Train the model with constant hyperparameter values.
det experiment create -f context\const.yaml context\
REM  Same as `const.yaml`, but trains the model with multiple GPUs (distributed training).
REM det experiment create -f context\dist_random.yaml context\
REM Perform a hyperparameter search using Determined's state-of-the-art adaptive hyperparameter tuning algorithm.
REM det experiment create -f context\adaptive.yaml context\
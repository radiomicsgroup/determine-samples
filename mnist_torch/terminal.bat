
set DET_MASTER=172.27.0.46:80

set DET_USER=demo
set DET_PASS=demo

det experiment create -f context\const.yaml context\

REM Train the model with constant hyperparameter values.
det experiment create -f context\const.yaml context\
REM  Same as `const.yaml`, but trains the model with multiple GPUs (distributed training).
REM det experiment create -f context\dist_random.yaml context\
REM Perform a hyperparameter search using Determined's state-of-the-art adaptive hyperparameter tuning algorithm.
REM det experiment create -f context\adaptive.yaml context\
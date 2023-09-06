
#!/bin/bash

export DET_MASTER=172.27.1.63:80

export DET_USER=demo
export DET_PASS=demo

# Train the model with constant hyperparameter values.
det experiment create -f ./context/const.yaml ./context
# Same as `const.yaml`, but trains the model with multiple GPUs (distributed training).
#det experiment create -f ./context/dist_random.yaml ./context
# Perform a hyperparameter search using Determined's state-of-the-art adaptive hyperparameter tuning algorithm.
#det experiment create -f ./context/adaptive.yaml ./context




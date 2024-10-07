import multiprocessing
import numpy
import os
import traceback
import logging
from slack_webhook import Slack
import time


print(" cpu_count ",multiprocessing.cpu_count())
print(" numpy version ", numpy.__version__)

print("Time Delay 4 minutes")
time.sleep(4*60) # Delay for 4 minute (4*60 seconds).

files   = []
folders = []
for (dirpath, dirnames, filenames) in os.walk("/nfs/rnas" ):
    files.extend(filenames)
    folders.extend(dirnames)
    break

for f in files:
    print("File ", f)

for d in folders:
    print("Directory ", d)


slack_url = os.getenv('SLACK_URL')
slack = Slack(url=slack_url)
try:
    slack.post(text="End demo cmd task in determine. Cpucount= {cpu}, numpy_version= {numpyver}".format(cpu=multiprocessing.cpu_count(),numpyver=numpy.__version__))
except Exception as e:
    print("You don't update the slack url")
    logging.error(traceback.format_exc())
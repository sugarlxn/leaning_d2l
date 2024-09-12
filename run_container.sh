#!/bin/bash

docker run --rm -it --name d2l --ipc=host --gpus=all -v /home/lxn/leaning_d2l:/leaning_d2l -p 8888:8888 lxn_d2l:1.0 /bin/bash
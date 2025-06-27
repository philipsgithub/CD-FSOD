#!/bin/bash

dataset=$1

mkdir -p log/${dataset}

for repeat_id in 0 # 1 2 3 4 5 6 7 8 9
do
  for shot in  10 # 1 5 10
  do
    python train_net.py --num-gpus 1  --config-file ./configs/${dataset}/${shot}_shot.yaml 2>&1 | tee log/${dataset}/${shot}_shot.log
  done
done

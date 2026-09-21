#!/bin/bash

# Define where the tools are
SARDULIB="/home/cherukara/Documents/SimProjects/micro-SARDU/ainas"

# Extract training and validation voxels
#python $SARDULIB/extractvoxels_sardunet.py ./sardutrain ./sardutrain/datatrain.bin ./sardutrain/dataval.bin

# Run training, attempting to identify 16 measurements
python $SARDULIB/train_sardunet_v1.py ./sardutrain/datatrain.bin ./sardutrain/dataval.bin ./sarduout/train \
    --dsel 16 --mbatch 32 --noepoch 100 

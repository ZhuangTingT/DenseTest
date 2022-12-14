#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/eval_linemod.py --dataset_root /kaggle/input/linemoddense/Linemod_preprocessed\
  --model /kaggle/input/densefusionpoints/trained_checkpoints/linemod/pose_model_9_0.01310166542980859.pth\
  --refine_model /kaggle/input/densefusionpoints/trained_checkpoints/linemod/pose_refine_model_493_0.006761023565178073.pth

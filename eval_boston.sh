#!/bin/sh

activation="sigmoid"
loss="mean_squared_error"
dataset="boston"

for batch_size in 4 8 16 32 64
do
    for units in 8 16 32 64
    do
        python train.py --dataset $dataset --units $units --batch_size $batch_size --activation $activation --loss $loss
    done
done

#!/bin/bash

echo "Starting model training..."

# Run the training script
python models/v1/train.py > logs/training.log 2>&1

# Check if successful
if [ $? -eq 0 ]; then
  echo "Model trained and saved successfully."
else
  echo "Training failed!" >&2
  exit 1
fi

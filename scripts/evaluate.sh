#! /usr/bin/env bash

echo "Model Evaluation in progress..."

# Assessment
python models/v1/metrics.py > logs/evaluation.log 2>&1

# checkout the status of the last command
if [ $? -eq 0 ]; then
    echo "Evaluation ended. Available results in logs/evaluation.log"
else
    echo "Error when evaluation !" >&2
    exit 1
fi

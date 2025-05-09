#!/bin/bash

echo "Process starting..."

# feature engineering
python utils/preprocessed.py

# checkout the status of the last command
if [ $? -eq 0 ]; then
    echo "Processing  ended successfully."
else
    echo "Error when Processing !" >&2
    exit 1
fi

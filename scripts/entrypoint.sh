#! /usr/bin/env bash

echo "Starting up service ..."
# Check SERVICE_NAME
if [ -z "$SERVICE_NAME" == "fastapi" ]; then
    echo "Starting FastAPI server..."
    # Start FastAPI server
    python3 -m api_app.py

elif [ "$SERVICE_NAME" == "streamlit" ]; then
    echo "Starting Streamlit server..."
    # Start Streamlit server
    streamlit run streamlit_dashboard_app.py --server.port $STREAMLIT_PORT --server.address 0.0.0.0
fi

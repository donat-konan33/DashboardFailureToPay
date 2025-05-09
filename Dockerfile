FROM python:3.9.20-slim

ARG DEBIAN_FRONTEND=noninteractive

ENV PYTHONUNBUFFERED=1
ENV STREAMLIT_PORT=8501
ENV FASTAPI_PORT=8001

COPY ./app ./app

WORKDIR /app

COPY ./scripts ./scripts

COPY ./data ./data

COPY ./fichier_api  ./fichier_api

COPY ./utils ./utils

COPY ./pyproject.toml  ./pyproject.toml

COPY ./poetry.lock  ./poetry.lock

RUN apt-get update \
    && apt-get -y upgrade \
    && pip3 install --no-cache-dir poetry==2.0.1 \
    && poetry install --only main \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "poetry", "run", "./scripts/entrypoint.sh" ]

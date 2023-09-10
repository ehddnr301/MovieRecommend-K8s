#!/bin/bash

# bash start_secret.sh

kubectl apply -f postgresql/postgresql.yaml

kubectl apply -f fastapi/fastapi.yaml

kubectl apply -f client/movie-sender.yaml

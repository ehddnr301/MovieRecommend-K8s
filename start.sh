#!/bin/bash

bash create_env_file.sh

bash start_secret.sh

kubectl apply -f postgresql/postgresql.yaml

sleep 30;

kubectl apply -f fastapi/fastapi.yaml

sleep 30;

kubectl apply -f kafka/zookeeper.yaml

sleep 30;

kubectl apply -f kafka/broker.yaml

sleep 30;

kubectl apply -f kafka/schema-registry.yaml

sleep 30;

kubectl apply -f kafka/connect.yaml

sleep 210;

kubectl apply -f kafka/connector_preprocess.yaml

sleep 30;

kubectl apply -f grafana/grafana.yaml

sleep 30;

kubectl apply -f client/movie-sender.yaml

kubectl apply -f client/movie-client.yaml

kubectl apply -f airflow/airflow-volume.yaml

kubectl apply -f airflow/airflow.yaml
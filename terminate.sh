#!/bin/bash

# bash start_secret.sh

kubectl delete -f postgresql/postgresql.yaml

kubectl delete -f fastapi/fastapi.yaml

kubectl delete -f kafka/zookeeper.yaml

kubectl delete -f kafka/schema-registry.yaml

kubectl delete -f kafka/broker.yaml

kubectl delete -f kafka/connect.yaml

kubectl delete -f kafka/connector_preprocess.yaml

kubectl delete -f client/movie-client.yaml

kubectl delete -f grafana/grafana.yaml

kubectl delete -f airflow/airflow.yaml

kubectl delete -f minio/minio.yaml

kubectl delete -f mlflow/mlflow.yaml
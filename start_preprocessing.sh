#!/bin/bash

cd postgresql && bash create_secret.sh && cd ..

cd minio && bash create_secret.sh && bash apply_minio.sh && cd ..

cd mlflow && bash create_secret.sh && cd ..

cd fastapi && bash create_secret.sh && cd ..

cd client && bash create_secret.sh && cd ..

cd airflow && bash create_secret.sh && bash apply_airflow_volume.sh && cd ..

cd grafana && bash create_secret.sh && cd ..
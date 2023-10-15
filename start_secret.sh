cd postgresql && bash create_secret.sh && cd ..

cd fastapi && bash create_secret.sh && cd ..

cd client && bash create_secret.sh && cd ..

cd airflow && bash create_secret.sh && bash apply_airflow_volume.sh && cd ..

cd grafana && bash create_secret.sh && cd ..
echo "DB_NAME=postgres" >> postgresql/.env
echo "DB_USER=postgres" >> postgresql/.env
echo "DB_PASSWORD=postgres" >> postgresql/.env

echo "ENV=development" >> fastapi/.env
echo "TEST_DATABASE_URL=postgresql+asyncpg://postgres:postgres@postgres-service:5432/postgres" >> fastapi/.env
echo "PROD_DATABASE_URL=postgresql+asyncpg://postgres:postgres@postgres-service:5432/postgres" >> fastapi/.env

echo "MLFLOW_S3_ENDPOINT_URL=http://minio-service:9000/" >> mlflow/.env
echo "AWS_ACCESS_KEY_ID=test_user_id" >> mlflow/.env
echo "AWS_SECRET_ACCESS_KEY=test_user_password" >> mlflow/.env

echo "MINIO_ACCESS_KEY=test_access_key" >> minio/.env
echo "MINIO_SECRET_KEY=test_secret_key" >> minio/.env
echo "MINIO_ROOT_USER=test_user_id" >> minio/.env
echo "MINIO_ROOT_PASSWORD=test_user_password" >> minio/.env

echo "REQUEST_URL=http://fastapi-service:8080/movies/" >> client/.env
echo "GITHUB_URL=https://media.githubusercontent.com/media/ehddnr301/MovieRecommend-Csv/master/movies.csv" >> client/.env

echo "AIRFLOW__CORE__SQL_ALCHEMY_CONN=postgresql+psycopg2://postgres:postgres@postgres-service-airflow:5432/postgres" >> airflow/.env

echo "GF_SECURITY_ADMIN_USER=admin" >> grafana/.env
echo "GF_SECURITY_ADMIN_PASSWORD=admin" >> grafana/.env
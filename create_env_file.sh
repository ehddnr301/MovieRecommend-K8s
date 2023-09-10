echo "DB_NAME=postgres" >> postgresql/.env
echo "DB_USER=postgres" >> postgresql/.env
echo "DB_PASSWORD=postgres" >> postgresql/.env

echo "ENV=development" >> fastapi/.env
echo "TEST_DATABASE_URL=postgresql+asyncpg://postgres:postgres@postgres-service:5432/postgres" >> fastapi/.env
echo "PROD_DATABASE_URL=postgresql+asyncpg://postgres:postgres@postgres-service:5432/postgres" >> fastapi/.env

echo "REQUEST_URL=http://fastapi-service:8080/movies/" >> client/.env
echo "GITHUB_URL=https://media.githubusercontent.com/media/ehddnr301/MovieRecommend-Csv/master/movies.csv" >> client/.env
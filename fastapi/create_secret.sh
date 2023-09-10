#!/bin/bash

set -e

if [ ! -f ".env" ]; then
  echo ".env file not found"
  exit 1
fi

# 환경 변수 읽어오기
export $(grep -v '^#' .env | xargs)

# Kubernetes Secret 오브젝트 생성
kubectl create secret generic fastapi-secret \
  --from-literal=env=$ENV \
  --from-literal=test_database_url=$TEST_DATABASE_URL \
  --from-literal=prod_database_url=$PROD_DATABASE_URL
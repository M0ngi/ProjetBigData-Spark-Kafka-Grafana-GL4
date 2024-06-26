#!/bin/bash

cp ./tools/* ./master/tools/
cp ./scripts/run-py-batch.sh ./master/tools/
cp ./scripts/run-py-kafka.sh ./master/tools/

docker network create \
  --driver=bridge \
  --subnet="172.50.0.0/24" \
  --gateway="172.50.0.1" "hadoop"

docker compose up --build

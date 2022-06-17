#!/bin/bash

set -e 

cd infra
./keycloak/realms/insert_env.py
docker-compose up --build --remove-orphans -d

cd ..
./scripts/logs.sh login || true # ctl+c is ok

cd infra
docker-compose down

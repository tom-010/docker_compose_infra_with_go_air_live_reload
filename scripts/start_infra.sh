#!/bin/bash

set -e 

cd infra

./keycloak/realms/insert_env.py
docker-compose up --build --remove-orphans


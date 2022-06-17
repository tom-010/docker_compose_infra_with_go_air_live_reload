#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No docker-compose service name given."
    echo "Call like '$0 service-name'"
    exit 1
fi

cd infra # where the docker-compose lives
PREFIX_CUTOFF=29
docker-compose logs -f $1 | cut -c $PREFIX_CUTOFF-

#!/bin/bash

# Need to put key in the environment for sentry container to use 
export SENTRY_SECRET_KEY=$(docker run --rm sentry config generate-secret-key)
docker-compose up -d
# Cannot login until this command is run
# Should be idempotent, so can run every time
docker exec -it sentry sentry upgrade

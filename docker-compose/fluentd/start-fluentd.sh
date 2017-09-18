#!/bin/bash

set -ex

# - KAFKA_BROKER_LIST
# - KAFKA_DEFAULT_TOPIC

if [ -z "$KAFKA_BROKER_LIST" ]; then
    echo "Error: No KAFKA_BROKER_LIST"
    exit 1
fi

if [ -z "$KAFKA_DEFAULT_TOPIC" ]; then
    echo "Error: No KAFKA_DEFAULT_TOPIC"
    exit 1
fi

# Stop all kafka containers ("docker-compose down" does not work since they are not launched by docker-compose.yml)
docker stop $(docker ps --filter "name=fluentd" -q -a) || true
docker rm $(docker ps --filter "name=fluentd" -q -a) || true


# Update fluentd_confs

cd fluentd_confs

sed -e 's/<BROKER_LIST>/'${KAFKA_BROKER_LIST}'/g' \
    -e 's/<DEFAULT_TOPIC>/'${KAFKA_DEFAULT_TOPIC}'/g' \
    multi-output.conf.templ > multi-output.conf

cd ..

# Start fluentd service
docker-compose -f docker-compose.fluentd.yml up -d

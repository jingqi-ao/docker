#!/bin/bash

set -ex

# KAFKA_LOCAL_TOOL_PATH

KAFKA_LOCAL_TOOL_PATH=${KAFKA_LOCAL_TOOL_PATH:-~/kafka_2.11-0.11.0.0}
echo "KAFKA_LOCAL_TOOL_PATH: "${KAFKA_LOCAL_TOOL_PATH}

# Stop all kafka containers ("docker-compose down" does not work since they are not launched by docker-compose.yml)
docker stop $(docker ps --filter "name=kafka" -q -a) || true
docker rm $(docker ps --filter "name=kafka" -q -a) || true

# Start kafka and zookeeper
HOST_IP=$(hostname -i)

export HOST_IP=$HOST_IP
docker-compose -f docker-compose.kafka.yml up -d


# Hard wait 30s for broker up
echo "waiting 30s for broker up"
sleep 30

cd ${KAFKA_LOCAL_TOOL_PATH}

# Add kafka topic
bin/kafka-topics.sh --create --zookeeper ${HOST_IP}:2181 --replication-factor 1 --partitions 1 --topic docker-log

#  List all topics
bin/kafka-topics.sh --zookeeper ${HOST_IP}:2181 --list

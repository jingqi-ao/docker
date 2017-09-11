#!/bin/bash

HOST_IP=$(hostname -i)

export HOST_IP=$HOST_IP
docker-compose -f docker-compose.kafka.yml up -d

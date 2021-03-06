#!/bin/bash
# create topic
docker run --network kafka_default --rm confluentinc/cp-kafka:latest kafka-topics --create --zookeeper zookeeper:2181 --replication-factor 3 --partitions 100 --config max.message.bytes=1000012 --topic $1

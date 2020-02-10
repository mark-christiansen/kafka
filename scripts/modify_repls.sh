#!/bin/bash

docker run --network kafka_default --rm confluentinc/cp-kafka:latest kafka-topics --alter --zookeeper zookeeper:2181 --topic $1 --replication-factor $2

#!/bin/bash

docker run --network kafka_default --rm confluentinc/cp-kafka:4.0.2-1 kafka-topics --alter --zookeeper zookeeper:2181 --topic $1 --replication-factor $2

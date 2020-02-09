#!/bin/bash

docker run --rm --network kafka_default confluentinc/cp-kafka:4.0.2-1 kafka-topics --describe --zookeeper zookeeper:2181 --topic $1

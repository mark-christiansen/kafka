#!/bin/bash

docker run --rm --network kafka_default confluentinc/cp-kafka:latest kafka-topics --describe --zookeeper zookeeper:2181 --topic $1

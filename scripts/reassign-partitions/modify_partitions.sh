#!/bin/bash

docker run --rm --network kafka_default -v $(pwd)/:/tmp --rm confluentinc/cp-kafka:latest kafka-reassign-partitions --zookeeper zookeeper:2181 --reassignment-json-file /tmp/modified.json --execute

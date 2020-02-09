#!/bin/bash

docker run --network kafka_default --rm confluentinc/cp-kafka:4.0.2-1 kafka-topics --list --zookeeper zookeeper:2181

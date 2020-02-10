#!/bin/bash

docker run --network kafka_default --rm confluentinc/cp-kafka:latest kafka-topics --list --zookeeper zookeeper:2181

#!/bin/bash

docker run --rm --network kafka_default confluentinc/cp-kafka:latest kafka-configs --describe --zookeeper zookeeper:2181 --entity-type topics

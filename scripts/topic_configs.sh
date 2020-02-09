#!/bin/bash

docker run --rm --network kafka_default confluentinc/cp-kafka:4.0.2-1 kafka-configs --describe --zookeeper zookeeper:2181 --entity-type topics

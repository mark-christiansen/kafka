#!/bin/bash

docker run --rm --network kafka_default confluentinc/cp-kafka:latest kafka-consumer-groups --bootstrap-server broker1:19092,broker2:19093,broker3:19094,broker4:19095,broker5:19096 --describe --group $1 --state

#!/bin/bash

# create consumer config file
echo "exclude.internal.topics=false" > /tmp/consumer.config

docker run --rm --network kafka_default -v /tmp:/tmp confluentinc/cp-kafka:4.0.2-1 kafka-console-consumer --consumer.config /tmp/consumer.config --zookeeper zookeeper:2181 --formatter "kafka.coordinator.group.GroupMetadataManager\$OffsetsMessageFormatter" --topic __consumer_offsets --from-beginning --max-messages $1

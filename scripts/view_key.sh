#!/bin/bash

docker run --rm --network kafka_default confluentinc/cp-schema-registry:latest kafka-avro-console-consumer --bootstrap-server broker1:19092,broker2:19093,broker3:19094,broker4:19095,broker5:19096 --topic $1 --from-beginning --property schema.registry.url=http://schema-registry:8081 --property print.key=true --property print.schema.ids=true --property schema.id.separator=:


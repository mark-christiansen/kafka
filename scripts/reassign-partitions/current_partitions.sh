#!/bin/bash

idx=0

# generate file that contains the current state of the topics/partitions specified in the topics.json file in this directory
docker run --rm --network kafka_default -v $(pwd)/:/tmp --rm confluentinc/cp-kafka:latest kafka-reassign-partitions --zookeeper zookeeper:2181 --topics-to-move-json-file /tmp/topics.json --broker-list "1,2,3,4,5" --generate |
while IFS= read -r line
do 
    if [ $idx = 1 ] 
    then 
        echo "$line" | python -m json.tool > ./rollback.json
    elif [ $idx = 4 ] 
    then
        echo "$line" | python -m json.tool > ./modified.json
    fi
    idx=$(expr $idx + 1)
done

rm -rf hsperfdata_root

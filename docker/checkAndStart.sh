#!/bin/bash

COUNTER=`find fedora38/data -name "info*place*" | wc -l`

if [ $COUNTER -eq 0 ]
then
  startup.sh
  sleep 5
  ./ingestPlaces.sh
  sleep 1
  shutdown.sh
  sleep 5
fi

catalina.sh run
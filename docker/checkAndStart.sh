#!/bin/sh

COUNTER=`find fedora38/data -name "info*place*" | wc -l`

if [ $COUNTER -eq 0 ]
then
  ./startup.sh
  ./ingestPlaces.sh
  ./shutdown.sh
fi

catalina.sh run
#!/bin/bash

echo "Ingesting places"
for FILE in `find import -type f`
do
  ./fedora38/client/bin/fedora-ingest.sh f $FILE info:fedora/fedora-system:ATOMZip-1.1 localhost:8088 fedoraAdmin changeit http
done

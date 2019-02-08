#!/bin/bash

echo "Ingesting places"
for FILE in `find import -type f`
do
  ./fedora38/client/bin/fedora-ingest.sh f $FILE info:fedora/fedora-system:ATOMZip-1.1 alvin-docker-fedora:8443 fedoraAdmin changeit https
done

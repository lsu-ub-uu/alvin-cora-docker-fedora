#!/bin/sh
start(){
	COUNTER=`find fedora38/data -name "info*place*" | wc -l`;
	if [ $COUNTER -eq 0 ]
	then
	  startup.sh;
	  waitForUrlToExist http://localhost:8088/;
	  ./ingestPlaces.sh;
	  shutdown.sh;
	  waitForUrlToDisappear http://localhost:8088/;
	fi
	catalina.sh run;
}

waitForUrlToExist(){
	local url=$1;
	echo "Wait until url is up: " $url;
	
	isUp=$(lookupUrl $url);
	while [ "$isUp" == "false" ]; do 
		echo "Waiting 1 sec for: " $url;
		sleep 1
		isUp=$(lookupUrl $url);
	done
}

lookupUrl(){
	local url=$1;
	wget $url --spider;
	local answer=$?
	if [[ $answer -eq 0 ]] 2>/dev/null; then
		echo "true" ;
	else
		echo "false";
	fi
}
waitForUrlToDisappear(){
	local url=$1;
	echo "Wait until url is down: " $url;
	
	isUp=$(lookupUrl $url);
	while [ "$isUp" != "false" ]; do 
		echo "Waiting 1 sec for: " $url;
		sleep 1
		isUp=$(lookupUrl $url);
	done
}

start
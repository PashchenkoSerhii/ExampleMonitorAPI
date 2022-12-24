#!/bin/bash

start() {
	source ~/.profile 
	source /etc/profile
	cd /opt/monitor_api/pub/restApiMonitors/
	pwd
	go version
	/opt/monitor_api/pub/restApiMonitors/restApiMonitors --start > /dev/null 2> /dev/null &
}

stop(){
	kill -9 $(lsof -t -i:8030)
}
case $1 in
	start|stop) "$1" ;;
esac

echo ""
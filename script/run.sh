#!/bin/sh
# Settings - main
case "$1" in
		start)
		java -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m -XX:+UseConcMarkSweepGC -Xms1024m -Xmx1024m -XX:-UseGCOverheadLimit -Xss512k -XX:NewRatio=3 -jar target/asset-service.jar > asset-service.log &
		;;
		stop)
		pkill -f "asset-service.jar"
		;;
		log)
		tail -f asset-service.log
		;;
		*)
		echo "Usage: {start|stop|log}"
		;;
esac
		


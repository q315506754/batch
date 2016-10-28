#!/bin/bash
pid=`ps -ef |more |grep  /data/apache-tomcat-7.0.68 | awk '{print $2}'`
kill -9 $pid
tomcatStartBat='/data/apache-tomcat-7.0.68/bin/startup.sh'
sh $tomcatStartBat
sh printTomcatLog.sh 200
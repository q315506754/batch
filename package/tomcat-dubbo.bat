ssh user@172.16.0.46 "sudo kill -9 `ps -ef | grep /home/user/apache-tomcat-7.0.42 | awk '{print $2}'`"
ssh user@172.16.0.46 "sudo home/user/apache-tomcat-7.0.42/bin/startup.sh"
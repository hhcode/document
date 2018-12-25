log=/root/script/startup.log


echo `date "+%Y-%m-%d %H:%M:%S"` ' start...' >> $log

echo `date "+%Y-%m-%d %H:%M:%S"` 'redis start...' >> $log

/usr/local/bin/redis-server /etc/redis.conf >> $log

echo `date "+%Y-%m-%d %H:%M:%S"` 'jenkins start...' >> $log

nohup /opt/jdk/jdk8/bin/java -jar /opt/jenkins/jenkins.war --httpPort=1111 >/dev/null &

echo `date "+%Y-%m-%d %H:%M:%S"` 'nginx start...' >> $log

/usr/local/nginx/sbin/nginx

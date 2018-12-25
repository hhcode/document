#!/bin/bash

oldIp=$1
newIp=$2

echo $oldIp
echo $newIp
sed -i "s/$oldIp/$newIp/g" /usr/local/nginx/conf//nginx.conf
echo $newIp > /root/syncip/ip

/usr/local/nginx/sbin/nginx -s reload

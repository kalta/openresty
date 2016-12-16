#!/bin/bash
IMAGE=netcomposer/openresty:1.11.2-0

docker rm openresty > /dev/null 2>&1

docker run \
	-d \
	--name openresty \
	--network openresty \
	-p 80:80 \
	-p 443:443 \
	-v /:/hostfs:ro \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/letsencrypt:/etc/letsencrypt:ro \
	-v openresty_sites:/usr/local/openresty/nginx/conf/sites \
	$IMAGE

#	--restart unless-stopped \

#	-v openresty_logs:/var/log/openresty \

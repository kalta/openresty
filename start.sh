#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker rm openresty > /dev/null 2>&1

docker run \
	-d \
	--name openresty \
	--network openresty \
	--restart unless-stopped \
	-p 80:80 \
	-p 443:443 \
	-v /:/hostfs:ro \
	-v openresty_conf:/etc/openresty/conf.d:ro \
	-v $DIR/www:/etc/openresty/www:ro \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/letsencrypt:/etc/letsencrypt:ro \
	openresty:1.11.5-alpine

#	-v openresty_logs:/var/log/openresty \

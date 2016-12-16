#!/bin/bash
# -s reload
# -s stop
# -t
# -V

docker exec -ti openresty /usr/local/openresty/nginx/sbin/nginx -t


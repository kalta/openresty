# See https://github.com/openresty/docker-openresty/blob/master/alpine/Dockerfile
FROM openresty/openresty:1.11.2.2-alpine

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY sites /usr/local/openresty/nginx/conf/sites
COPY local /usr/local/openresty/nginx/html/local
COPY profile.sh /etc/profile.d/netcomposer.sh

#!/bin/sh

letsencrypt renew
docker exec -ti nk_openresty openresty -s reload

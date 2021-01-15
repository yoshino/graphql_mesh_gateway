#!/bin/sh
# After docker-compose build --no-cache, the gateway must wait for graphql API.

STATUS=999

until [ "$STATUS" -eq 200 ]
do
STATUS=`curl -IL http://172.16.238.4:3000 -o /dev/null -w '%{http_code}\n' -s`
done

yarn graphql-mesh serve

#!/usr/bin/env bash

docker exec -ti tuning-app curl -X PUT -d @/www/docker/nginx/config.json --unix-socket /var/run/control.unit.sock http://localhost/config
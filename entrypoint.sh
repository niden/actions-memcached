#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 11211:11211 niden/memcached:v5"

sh -c "$docker_run"


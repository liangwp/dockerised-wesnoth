#!/bin/bash

xauth list > temp_xcookie
docker build -t wesnoth:latest .
rm temp_xcookie

# make folders so they don't get created by docker during docker-compose up
mkdir -p __data/cache
mkdir -p __data/config
mkdir -p __data/local_share

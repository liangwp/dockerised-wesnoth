#!/bin/bash

xauth list > temp_xcookie
docker build -t wesnoth:latest .
rm temp_xcookie

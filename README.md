# Dockerised Battle For Wesnoth

## Requirements

* Docker
* Linux
* X11
* docker setup for gpu / opengl usage from within a docker container
    * docker version 20.10.8
    * docker-compose 1.29.2
    * nvidia driver 470.57.02
    * etc?
* clone this repository

## Setup

1. Run the build script, to grab the host session's X11 cookie, embed into the docker image, and create the mounted directories if necessary
    * `./build.sh`
1. Edit docker-compose file, with the relevant setup for your gpu as necessary.
    * `docker-compose up`

## Issues

* Audio used to work, now doesn't work anymore... T_T
* Toggling to/from full screen may cause the display and mouse cursor to not work correctly. Press ctrl-q to quit.

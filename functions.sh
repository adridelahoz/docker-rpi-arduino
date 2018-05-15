#!/bin/bash

# Arduino features using docker image

function arduino(){
    docker run --rm -it -v "$(pwd):/src" resin/rpi-raspbian $@     
}

function arduino-init(){
    docker run --rm -it -v "$(pwd):/src" resin/rpi-raspbian init $1
}

function arduino-build(){
    docker run --rm -it -v "$(pwd):/src" resin/rpi-raspbian build
}

function arduino-upload(){
    docker run --rm -it -v "$(pwd):/src" --device=/dev/ttyUSB0 resin/rpi-raspbian upload
}


function arduino-watch(){
    docker run --rm -it -v "$(pwd):/src" --device=/dev/ttyUSB0 resin/rpi-raspbian serial
}

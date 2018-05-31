#!/bin/bash

# Arduino features using docker image

function arduino(){
    docker run --rm -it -v "$(pwd):/src" arduino/rpi $@     
}

function arduino-init(){
    docker run --rm -it -v "$(pwd):/src" arduino/rpi init $1
}

function arduino-build(){
    docker run --rm -it -v "$(pwd):/src" arduino/rpi build
}

function arduino-upload(){
    docker run --rm -it -v "$(pwd):/src" --device=/dev/ttyUSB0 arduino/rpi upload
}


function arduino-watch(){
    docker run --rm -it -v "$(pwd):/src" --device=/dev/ttyUSB0 arduino/rpi serial
}

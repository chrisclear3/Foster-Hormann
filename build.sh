#!/bin/bash

BUILD_DIR="build"

if [ ! -d "$BUILD_DIR" ]; then
    mkdir "$BUILD_DIR"
    echo "Created $BUILD_DIR directory."
else
    if [ "$(ls -A $BUILD_DIR)" ]; then
        echo "Cleaning $BUILD_DIR directory."
        rm -r "$BUILD_DIR"/*
    else
        echo "$BUILD_DIR directory is already empty."
    fi
fi

cd "$BUILD_DIR"

echo "Running cmake .."
cmake ..

echo "Running make"
make

cd ..

#!/bin/bash

# 设置变量
BUILD_DIR="build"

# 检查 build 文件夹是否存在
if [ ! -d "$BUILD_DIR" ]; then
    # 如果不存在，创建 build 文件夹
    mkdir "$BUILD_DIR"
    echo "Created $BUILD_DIR directory."
else
    # 如果存在，检查是否为空
    if [ "$(ls -A $BUILD_DIR)" ]; then
        # 如果不为空，清空 build 文件夹
        echo "Cleaning $BUILD_DIR directory."
        rm -r "$BUILD_DIR"/*
    else
        echo "$BUILD_DIR directory is already empty."
    fi
fi

# 进入 build 文件夹
cd "$BUILD_DIR"

# 执行 cmake 和 make
echo "Running cmake .."
cmake ..

echo "Running make"
make

# 返回到脚本所在的目录
cd ..

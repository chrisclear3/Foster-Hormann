cmake_minimum_required(VERSION 3.10)

project(polyclip)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

add_executable(polyclip polyclip.cpp timer.cpp)

target_include_directories(polyclip PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

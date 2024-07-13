cmake_minimum_required(VERSION 3.22.0)
project(Learing_cmake)

include_directories(includes)

file(GLOB_RECURSE SOURCES "srcs/*.c")

add_executable(main.exe ${SOURCES})



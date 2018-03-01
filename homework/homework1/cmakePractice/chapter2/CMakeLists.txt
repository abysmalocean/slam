cmake_minimum_required(VERSION 2.8)

PROJECT(HELLO)

MESSAGE(STATUS "This is BINARY dir " ${HELLO_BINARY_DIR})
MESSAGE(STATUS "This is SOURCE dir "${HELLO_SOURCE_DIR})
add_library(${PROJECT_NAME} SHARED src/main.c)
include_directories( ${MY_SOURCE_DIR}/src )
ADD_EXECUTABLE(hello main.c)


cmake_minimum_required( VERSION 2.8 )

project( HelloSLAM )
set( CMAKE_BUILD_TYPE "Release" )

include_directories("include")
add_library(hello SHARED src/hello.cpp)

add_executable(useHello useHello.cpp)
target_link_libraries(useHello hello)

install(TARGETS hello DESTINATION "/usr/local/lib/")
install(FILES include/hello.h DESTINATION "/usr/local/include/")

cmake_minimum_required (VERSION 3.2)
project (TryDLib)

find_package(dlib REQUIRED)

add_executable(feed feed.cpp)
target_link_libraries(feed dlib::dlib)

cmake_minimum_required(VERSION 3.23)

project(RayTracer)

add_executable(RayTracer)

find_package(TBB REQUIRED)

target_sources(RayTracer
    PRIVATE
        main.cpp
)

target_link_libraries(RayTracer 
    PRIVATE 
        TBB::tbb
)
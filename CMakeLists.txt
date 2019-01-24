cmake_minimum_required(VERSION 3.5)
project(example)

add_executable(unit_tests
    src/main.cpp
    src/example_1_seconds_tests.cpp
    src/example_5_seconds_tests.cpp
    src/example_10_seconds_tests.cpp
)
target_include_directories(
    unit_tests
    PUBLIC
        include
)
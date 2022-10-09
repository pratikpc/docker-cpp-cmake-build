cmake_minimum_required (VERSION 3.12)

project (Hello-Docker
        VERSION 0.0.1
        DESCRIPTION "Simple CMake Project by Pratik to demonstrate CMake Docker integration"
        LANGUAGES CXX)

# Add the Executable
add_executable (${PROJECT_NAME})

# Add the source files
target_sources(${PROJECT_NAME} PRIVATE main.cpp)

install (TARGETS ${PROJECT_NAME} DESTINATION bin)
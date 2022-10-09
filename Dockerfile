FROM ubuntu as ubuntu-build-base
RUN apt update -y; \
    apt upgrade -y; \
    apt install -y build-essential libboost-all-dev python3; \
    apt clean -y

FROM ubuntu-build-base as ubuntu-cmake
# Install CMake
# Specify CMake version
ARG CMAKE_VERSION=3.24.2
RUN  apt install -y wget; \
     wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-linux-x86_64.sh -O cmake.sh; \
     sh cmake.sh --prefix=/usr/local/ --exclude-subdir; \
     rm -rf cmake.sh;

FROM ubuntu-cmake as ubuntu-builder

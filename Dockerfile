FROM ubuntu as ubuntu-build-base
RUN apt update -y; \
    apt upgrade -y; \
    apt install -y build-essential libboost-all-dev python3; \
    apt clean -y
# Install CMake
RUN  apt install -y wget; \
     wget https://github.com/Kitware/CMake/releases/download/v3.24.2/cmake-3.24.2-linux-x86_64.sh -O cmake.sh; \
     sh cmake.sh --prefix=/usr/local/ --exclude-subdir; \
     rm -rf cmake.sh;
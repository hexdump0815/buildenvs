FROM ubuntu:18.04

RUN apt-get update
RUN export DEBIAN_FRONTEND=noninteractive && apt-get -yq install build-essential gcc-8 g++-8 cpp-8 git bash vim curl wget cmake autoconf automake libtool meson ninja-build gdb

# make gcc 8 the default as results in better optimized code
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7 --slave /usr/bin/cpp cpp-bin /usr/bin/cpp-7
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8 --slave /usr/bin/cpp cpp-bin /usr/bin/cpp-8

RUN ( test -e /usr/bin/aarch64-linux-gnu-gcc && rm -f /usr/bin/aarch64-linux-gnu-gcc && ln -s /usr/bin/gcc-8 /usr/bin/aarch64-linux-gnu-gcc ; exit 0 )
RUN ( test -e /usr/bin/aarch64-linux-gnu-g++ && rm -f /usr/bin/aarch64-linux-gnu-g++ && ln -s /usr/bin/g++-8 /usr/bin/aarch64-linux-gnu-g++ ; exit 0 )
RUN ( test -e /usr/bin/aarch64-linux-gnu-cpp && rm -f /usr/bin/aarch64-linux-gnu-cpp && ln -s /usr/bin/cpp-8 /usr/bin/aarch64-linux-gnu-cpp ; exit 0 )
RUN ( test -e /usr/bin/arm-linux-gnueabihf-gcc && rm -f /usr/bin/arm-linux-gnueabihf-gcc && ln -s /usr/bin/gcc-8 /usr/bin/arm-linux-gnueabihf-gcc ; exit 0 )
RUN ( test -e /usr/bin/arm-linux-gnueabihf-g++ && rm -f /usr/bin/arm-linux-gnueabihf-g++ && ln -s /usr/bin/g++-8 /usr/bin/arm-linux-gnueabihf-g++ ; exit 0 )
RUN ( test -e /usr/bin/arm-linux-gnueabihf-cpp && rm -f /usr/bin/arm-linux-gnueabihf-cpp && ln -s /usr/bin/cpp-8 /usr/bin/arm-linux-gnueabihf-cpp ; exit 0 )
RUN ( test -e /usr/bin/x86_64-linux-gnu-gcc && rm -f /usr/bin/x86_64-linux-gnu-gcc && ln -s /usr/bin/gcc-8 /usr/bin/x86_64-linux-gnu-gcc ; exit 0 )
RUN ( test -e /usr/bin/x86_64-linux-gnu-g++ && rm -f /usr/bin/x86_64-linux-gnu-g++ && ln -s /usr/bin/g++-8 /usr/bin/x86_64-linux-gnu-g++ ; exit 0 )
RUN ( test -e /usr/bin/x86_64-linux-gnu-cpp && rm -f /usr/bin/x86_64-linux-gnu-cpp && ln -s /usr/bin/cpp-8 /usr/bin/x86_64-linux-gnu-cpp ; exit 0 )
RUN ( test -e /usr/bin/i686-linux-gnu-gcc && rm -f /usr/bin/i686-linux-gnu-gcc && ln -s /usr/bin/gcc-8 /usr/bin/i686-linux-gnu-gcc ; exit 0 )
RUN ( test -e /usr/bin/i686-linux-gnu-g++ && rm -f /usr/bin/i686-linux-gnu-g++ && ln -s /usr/bin/g++-8 /usr/bin/i686-linux-gnu-g++ ; exit 0 )
RUN ( test -e /usr/bin/i686-linux-gnu-cpp && rm -f /usr/bin/i686-linux-gnu-cpp && ln -s /usr/bin/cpp-8 /usr/bin/i686-linux-gnu-cpp ; exit 0 )

FROM e3rp4y/rpi-cross-compiler-platform

RUN apt update && \
    apt install -y build-essential git autoconf automake libtool unzip && \
    git clone https://github.com/google/protobuf -b v3.6.1 --depth 1 && \
    cd protobuf && \
    ./autogen.sh && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    cd .. && \
    rm -rf protobuf

FROM ubuntu

# optional
RUN sed -i "s@http://.*ubuntu.com@http://mirrors.sustech.edu.cn@g" /etc/apt/sources.list

RUN apt-get update \
 && apt-get install -y \
        git vim \
        spim openjdk-11-jre csmith python3-pip gdb-multiarch \
        ninja-build llvm-15-dev build-essential pkg-config cmake flex bison clang clang-format zlib1g-dev libglib2.0-dev \
        g++-12-arm-linux-gnueabihf g++-riscv64-linux-gnu g++-mipsel-linux-gnu
# && rm -rf /var/lib/apt/lists/*

RUN pip install jinja2 tqdm

RUN git clone https://github.com/dtcxzyw/qemu /qemu \
 && cd /qemu \
 && ./configure --target-list=riscv64-linux-user,mipsel-linux-user,arm-linux-user --enable-plugins \
 && make -j

ENV QEMU_PATH="/qemu/build"

WORKDIR /workspace

# Usage:
# docker build . -t cmmc
# docker run -it --rm -v $(PWD):/workspace/ cmmc

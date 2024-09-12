FROM nvcr.io/nvidia/cuda:12.1.0-runtime-ubuntu20.04

# setup lable
LABEL maintainer="lxn12345"
LABEL version="1.0"
LABEL description="This is a dockerfile for building a container with CUDA 12.1.0 runtime on Ubuntu 20.04 for leaning d2l"

# Set the locale
ENV LANG C.UTF-8
# work dir
WORKDIR /root
# non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# install some basic tools
RUN cp -a /etc/apt/sources.list /etc/apt/sources.list.bak && \
    sed -i "s@http://.*archive.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
    sed -i "s@http://.*security.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \    
    apt-get install -y --no-install-recommends python3 && \
    apt-get install -y --no-install-recommends python3-pip && \
    python3 -m pip install -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple --upgrade pip && \
    pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple && \
    pip install torch==1.12.0 && \
    pip install torchvision==0.13.0 && \
    pip install d2l==0.17.6 && \
    pip install jupyter  

# CMD
CMD ["/bin/bash"]
    

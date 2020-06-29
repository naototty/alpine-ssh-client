FROM alpine:3.11
RUN apk add --no-cache \
  sudo
RUN sudo apk add --no-cache \
  openssh-client \
  ca-certificates \
  mosh \
    musl \
    linux-headers \
    gcc \
    g++ \
    make \
    gfortran \
    openblas-dev \
    curl \
    wget \
    tmux \
    screen \
    python3 \
    python3-dev \
  bash
RUN pip3 install --upgrade pip 
## RUN pip3 install --user -r requirements.txt

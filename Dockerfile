# Use ubuntu base image as parent
FROM ubuntu:22.04

# Install all the necessary packages
RUN echo 'tzdata tzdata/Areas select Europe' | debconf-set-selections && \
    echo 'tzdata tzdata/Zones/Europe select Nicosia' | debconf-set-selections && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y \
    tzdata \
    vim \
    net-tools \
    python3 \
    python3-pip \
    python3-yaml \
    iproute2 \
    dnsutils \
    ansible \
    git \
    sshpass \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set language to UTF8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

USER root
WORKDIR /root
COPY entrypoint.sh /root/

# entrypoint.sh will try to clone https://github/dsilevi/macvm-provisioning.git to /root
ENTRYPOINT /root/entrypoint.sh

FROM ubuntu:20.04

# Install some dependencies via APT
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y \
        software-properties-common sudo curl rsync \
        python-dev 'python.*-pip' python3-minimal \
        iputils-ping openjdk-8-jre openjdk-11-jre zip unzip \
        openssh-client openssh-server vim netcat less \
        bash-completion cron-apt && \
        rm -rf /var/lib/apt/lists/* && \
        apt-get clean

FROM ub-dev

ARG USERNAME=tom
ARG PUID=1000
ARG PGID=1000

USER root

RUN apt-get update && apt-get install -y gawk wget git-core diffstat unzip \
            texinfo gcc-multilib build-essential chrpath socat cpio python \
            python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping \
            python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev xterm locales \
            liblz4-tool zstd \
            vim bash-completion screen

USER ${USERNAME}

WORKDIR /home/${USERNAME}

RUN mkdir -p ~/work

RUN git clone -b honister git://git.yoctoproject.org/poky

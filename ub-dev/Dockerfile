FROM ubuntu:20.04

ARG USERNAME=tom
ARG PUID=1001
ARG PGID=1001

# Basic Ubuntu dev

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN apt-get update && apt-get install -y curl wget git unzip \
            build-essential python3 python3-pip locales \
            vim bash-completion screen tmux clang

RUN groupadd -g ${PGID} ${USERNAME} \
            && useradd -u ${PUID} -g ${USERNAME} -d /home/${USERNAME} ${USERNAME} \
            && mkdir /home/${USERNAME} \
            && chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8

USER ${USERNAME}

WORKDIR /home/${USERNAME}

RUN mkdir -p ~/work

# Setup zsh

USER root

RUN apt-get install -y zsh curl wget python3-pygments git

USER ${USERNAME}

WORKDIR /home/${USERNAME}

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

WORKDIR /home/${USERNAME}/.oh-my-zsh/plugins

RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting

RUN git clone https://github.com/zsh-users/zsh-autosuggestions

WORKDIR /home/${USERNAME}

# Setup vim

USER root

RUN apt-get install -y vim git build-essential cmake vim-nox python3-dev \
            mono-complete golang nodejs default-jdk npm

USER ${USERNAME}

WORKDIR /home/${USERNAME}

RUN mkdir -p /home/${USERNAME}/.vim/pack/${USERNAME}
RUN mkdir -p /home/${USERNAME}/.vim/pack/${USERNAME}/start
RUN mkdir -p /home/${USERNAME}/.vim/pack/${USERNAME}/opt

WORKDIR /home/${USERNAME}/.vim/pack/${USERNAME}/start

RUN git clone https://github.com/rafi/awesome-vim-colorschemes.git
RUN git clone https://github.com/cdelledonne/vim-cmake.git
RUN git clone https://github.com/preservim/nerdtree.git
RUN git clone https://github.com/dyng/ctrlsf.vim.git
RUN git clone https://github.com/preservim/tagbar.git
RUN git clone https://github.com/ycm-core/YouCompleteMe.git
RUN git clone https://github.com/dmerejkowsky/vim-ale.git
RUN git clone https://github.com/airblade/vim-gitgutter
RUN git clone https://github.com/tpope/vim-sensible.git
RUN git clone https://github.com/jiangmiao/auto-pairs.git
RUN git clone https://github.com/ludovicchabant/vim-gutentags.git
RUN git clone https://github.com/vim-airline/vim-airline.git
RUN git clone https://github.com/vim-airline/vim-airline-themes.git
RUN git clone https://github.com/sheerun/vim-polyglot.git

WORKDIR /home/${USERNAME}/.vim/pack/${USERNAME}/start/YouCompleteMe

RUN git submodule update --init --recursive

RUN python3 install.py --all

# Setup sudo

USER root

RUN apt-get install -y sudo
RUN adduser ${USERNAME} sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Copy configs

USER root

COPY .bashrc /home/${USERNAME}/
RUN chown ${USERNAME}:${USERNAME} /home/${USERNAME}/.bashrc

COPY .zshrc /home/${USERNAME}/
RUN chown ${USERNAME}:${USERNAME} /home/${USERNAME}/.zshrc

COPY .vimrc /home/${USERNAME}/
RUN chown ${USERNAME}:${USERNAME} /home/${USERNAME}/.vimrc

COPY init.sh /home/${USERNAME}/
RUN chown ${USERNAME}:${USERNAME} /home/${USERNAME}/init.sh
RUN chmod +x /home/${USERNAME}/init.sh

USER ${USERNAME}

WORKDIR /home/${USERNAME}/work

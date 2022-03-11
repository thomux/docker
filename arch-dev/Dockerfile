FROM archlinux

ARG USERNAME=tom
ARG PUID=1000
ARG PGID=1000

# Basic Ubuntu dev

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN pacman --noconfirm -Syu && pacman --noconfirm -S curl wget git unzip \
            base-devel python3 python-pip \
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

RUN pacman --noconfirm -S  zsh curl wget python-pygments git

USER ${USERNAME}

WORKDIR /home/${USERNAME}

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

WORKDIR /home/${USERNAME}/.oh-my-zsh/plugins

RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting

RUN git clone https://github.com/zsh-users/zsh-autosuggestions

WORKDIR /home/${USERNAME}

# Setup vim

USER root

RUN pacman --noconfirm -S vim git base-devel cmake vim python3 \
            mono go nodejs java-environment-common npm jdk11-openjdk

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

RUN python install.py --all

# Copy configs

COPY .bashrc /home/${USERNAME}/

COPY .zshrc /home/${USERNAME}/

COPY .vimrc /home/${USERNAME}/

COPY init.sh /home/${USERNAME}/

WORKDIR /home/${USERNAME}/work

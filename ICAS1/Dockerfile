FROM ub-dev

ARG USERNAME=tom

USER root

WORKDIR /home/${USERNAME}

# Setup python

RUN apt install -y python3 python2 python3-pip curl
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python2 get-pip.py
RUN ln -s /usr/bin/python2 /usr/bin/python

# Setup repo

USER ${USERNAME}

WORKDIR /home/${USERNAME}/git

RUN git clone https://gerrit.googlesource.com/git-repo.git

USER root

RUN  cp git-repo/repo /usr/bin/repo

# git-lfs

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install git-lfs

# Copy configs

USER root

COPY init_repo.sh /home/${USERNAME}
RUN chown ${USERNAME}:${USERNAME} /home/${USERNAME}/init_repo.sh
RUN chmod +x /home/${USERNAME}/init_repo.sh

USER ${USERNAME}

WORKDIR /home/${USERNAME}/work

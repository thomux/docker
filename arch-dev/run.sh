#!/bin/bash

mkdir -p ~/arch-dev
docker run -it --rm -v ~/arch-dev:/home/tom/work -v ~/.ssh:/home/tom/.ssh:ro  -v ~:/home/tom/host:ro arch-dev zsh

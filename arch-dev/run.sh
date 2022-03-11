#!/bin/bash

mkdir -p ./arch-dev
docker run -it --rm -v docker run -it --rm -v "$(pwd)"/arch-dev:/home/tom/work -v ~/.ssh:/home/tom/.ssh:ro  -v ~:/home/tom/home:ro arch-dev zsh

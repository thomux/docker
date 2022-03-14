#!/bin/bash

mkdir -p ~/ub-dev

docker run -it --rm -v ~/ub-dev:/home/tom/work -v ~:/home/tom/host:ro ub-dev zsh

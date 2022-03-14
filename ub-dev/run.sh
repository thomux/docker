#!/bin/bash

mkdir -p ./ub-dev

docker run -it --rm -v docker run -it --rm -v "$(pwd)"/ub-dev:/home/tom/work -v ~:/home/tom/home:ro ub-dev zsh

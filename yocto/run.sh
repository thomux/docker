#!/bin/bash

mkdir -p ./work

docker run -it --rm -v docker run -it --rm -v "$(pwd)"/work:/home/tom/work -v ~/.ssh:/home/tom/.ssh:ro  -v ~:/home/tom/home:ro yocto-honister bash

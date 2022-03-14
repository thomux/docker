#!/bin/bash

mkdir -p ~/yocto-honister

docker run -it --rm -v ~/yocto-honister:/home/tom/work -v ~/.ssh:/home/tom/.ssh:ro  -v ~:/home/tom/host:ro yocto-honister bash

mkdir c:\work
docker run -it --rm -v c:\work:/home/tom/work -v %homedrive%%homepath%\.ssh:/home/tom/.ssh:ro -v %homedrive%%homepath%:/home/tom/host:ro yocto-honister bash

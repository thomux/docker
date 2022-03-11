mkdir c:\arch-dev
docker run -it --rm -v c:\arch-dev:/home/tom/work -v %homedrive%%homepath%\.ssh:/home/tom/.ssh:ro -v %homedrive%%homepath%:/home/tom/host:ro arch-dev zsh
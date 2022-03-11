mkdir c:\ub-dev
docker run -it --rm -v c:\ub-dev:/home/tom/work -v %homedrive%%homepath%\.ssh:/home/tom/.ssh:ro -v %homedrive%%homepath%:/home/tom/host:ro ub-dev zsh
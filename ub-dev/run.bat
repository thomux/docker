mkdir c:\ub-dev
docker volume create dev
docker run -it --rm -v c:\ub-dev:/home/tom/out -v dev:/home/tom/work -v %homedrive%%homepath%:/home/tom/host:ro ub-dev zsh
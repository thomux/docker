mkdir c:\icas-dev
docker volume create icas
docker run -it --rm -v c:\icas-dev:/home/tom/out -v icas:/home/tom/work -v %homedrive%%homepath%:/home/tom/host:ro icas-dev zsh

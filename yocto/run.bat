mkdir c:\out
docker volume create yocto-honister
docker run -it --rm -v c:\out:/home/tom/out -v yocto-honister:/home/tom/work -v %homedrive%%homepath%\.ssh:/home/tom/.ssh:ro -v %homedrive%%homepath%:/home/tom/host:ro yocto-honister bash

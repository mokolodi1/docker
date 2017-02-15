# map in port 8080 with VirtualBox (so that it shows up on localhost:8080)
vboxmanage controlvm default natpf1 "nameformapping,tcp,,8080,,8080" 2> /dev/null

# build and then run it
docker build -t hello/world:v42 .
docker run -it -p 8080:8080 hello/world:v42 bash -c "nodejs index.js & /bin/bash"

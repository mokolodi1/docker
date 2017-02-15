# map in port 42 with VirtualBox (so that localhost:42 works)
vboxmanage controlvm default natpf1 "nameformapping,tcp,,42,,42" 2> /dev/null

# copy the public key to the Docker context for use in the build
cp ~/.ssh/id_rsa.pub .

# build and then run it
docker build -t mokolodi1/mission02:v42 .

# delete the public key to clean up
rm id_rsa.pub

# start the docker container
docker run -dt -p 42:42 mokolodi1/mission02:v42

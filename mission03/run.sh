# create the docker_volume folder *locally* and delete everything in it
# for demo purposes
mkdir -p /Users/Shared/docker_volume
rm -rf /Users/Shared/docker_volume/*

# link the docker_volume folder to a folder here for ease of access
ln -s /Users/Shared/docker_volume shared

# then mount it with docker...
docker run -it -v /Users/Shared/docker_volume:/shared ubuntu /bin/bash

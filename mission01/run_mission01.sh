docker build -t hello/world:v42 .
docker run -it -p 8080:8080 hello/world:v42 /bin/bash

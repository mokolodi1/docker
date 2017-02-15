FROM ubuntu

# install openssh-server
RUN apt-get update && apt-get install --yes openssh-server

# put in the authorized_keys file
ADD ./id_rsa.pub /root/.ssh/authorized_keys

# change ssh to operate on port 42
RUN sed -i "s/^Port 22/Port 42/" /etc/ssh/sshd_config

# expose the port to connect with ssh
EXPOSE 42

CMD service ssh start & /bin/bash

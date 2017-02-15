FROM ubuntu

# make sure apt is up to date
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nodejs npm curl

# put in code and npm install
WORKDIR /opt/app
ADD . /opt/app
RUN npm install
ADD .bashrc /root/.bashrc

EXPOSE 8080

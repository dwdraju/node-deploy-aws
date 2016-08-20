FROM ubuntu:14.04

MAINTAINER Raju Dawadi rajudawadinp@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# Install Nodejs
RUN apt-get update && apt-get install -y nodejs npm nodejs-legacy

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

#Show in our container
EXPOSE 3000

#Run the app
CMD cd /src && npm start
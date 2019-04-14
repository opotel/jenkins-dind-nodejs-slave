FROM benhall/dind-jenkins-agent:v2

RUN apt-get update
RUN apt-get upgrade -y
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh
RUN apt-get install nodejs
RUN apt-get -y install bzip2
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN npm install -g artillery  

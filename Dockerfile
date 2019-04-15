FROM jenkins/ssh-slave
RUN  curl -sSL https://get.docker.com/ | sh
RUN apt-get update &&\
    apt-get install -y openjdk-8-jdk &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh
RUN apt-get install nodejs
RUN apt-get -y install bzip2
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN npm install -g artillery  

FROM jenkins/ssh-slave
RUN  curl -sSL https://get.docker.com/ | sh
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh
RUN apt-get install nodejs
RUN apt-get -y install bzip2

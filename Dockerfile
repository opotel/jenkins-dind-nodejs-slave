FROM jenkins/ssh-slave

RUN  curl -sSL https://get.docker.com/ | sh
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN npm -g install selenium-node-webdriver
RUN npm -g install karma
RUN npm -g install mocha
#RUN npm -g install phantomjs-prebuilt
RUN npm install -g typescript  

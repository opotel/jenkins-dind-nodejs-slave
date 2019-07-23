FROM jenkins/ssh-slave

LABEL "org.label-schema.vendor"="OPOTEL Ltd" \
    version="1.0" \
    maintainer="dev@opotel.com" \
    description="Build, Test and Deploy Node.js projects and buld Docker images from Dockerfile"
    
RUN curl -sSL https://get.docker.com/ | sh
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
RUN nvm install 12.6.0
RUN nvm install 10.16.0
RUN nvm use 12.6.0
RUN npm -g install pm2@latest 
RUN npm -g install typescript
RUN npm -g install nodemon
RUN npm -g install karma 
RUN npm -g install mocha 
RUN npm -g install chai 
RUN npm -g install cucumber
RUN npm -g install jest
RUN npm -g install enzyme
RUN npm -g install artillery --unsafe-perm=true --allow-root
RUN npm -g install selenium-webdriver




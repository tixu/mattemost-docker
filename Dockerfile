from ubuntu

Maintainer Xavier Zébier

VOLUME  /mattermost/data
VOLUME  /mattermost-config
WORKDIR /mattermost

# Copy over files
ADD https://github.com/mattermost/platform/releases/download/v1.1.0/mattermost.tar.gz /
RUN tar -zxvf /mattermost.tar.gz --strip-components=1 && rm /mattermost.tar.gz
ADD config/*.json /mattermost-config/
ADD config/docker-entry.sh  /mattermost/
#CMD ["/mattermost/docker-entry.sh"] 



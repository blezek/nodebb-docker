FROM node:5
MAINTAINER bumped.io team <daniel.blezek@gmail.com>

# Prepare answers to postfix install questions.
RUN echo "postfix postfix/main_mailer_type select smarthost" | debconf-set-selections 
RUN echo "postfix postfix/mailname string localhost.localdomain" | debconf-set-selections 
RUN echo "postfix postfix/relayhost string smtp.localdomain" | debconf-set-selections

# Install postfix
RUN apt-get update
RUN apt-get install -y postfix

# Install nodebb
RUN cd /opt ; git clone -b v1.0.0 https://github.com/NodeBB/NodeBB nodebb
RUN cd /opt/nodebb ; npm install

# Create a nodebb volume
VOLUME /opt/nodebb

# Define a working directory, and entrypoint
WORKDIR /opt/nodebb
COPY entrypoint.sh /opt/nodebb/entrypoint.sh

# Expose the default nodbb port
EXPOSE 4567

CMD ["/opt/nodebb/entrypoint.sh"]

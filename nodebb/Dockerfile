FROM node:5
MAINTAINER bumped.io team <daniel.blezek@gmail.com>

RUN apt-get update
RUN apt-get install -y sendmail-bin
RUN cd /opt ; git clone -b v1.0.0 https://github.com/NodeBB/NodeBB nodebb
RUN cd /opt/nodebb ; npm install
# Create a nodebb volume
VOLUME /opt/nodebb

# Define a working directory
WORKDIR /opt/nodebb
COPY entrypoint.sh /opt/nodebb/entrypoint.sh
RUN chmod 755 /opt/nodebb/entrypoint.sh
# Expose ports
EXPOSE 4567

CMD ["/opt/nodebb/entrypoint.sh"]

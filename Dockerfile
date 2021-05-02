FROM ubuntu:18.04

# Update and upgrade
RUN apt-get update && apt-get -y upgrade

# Install install script dependencies
RUN apt-get install -y make zutils python-pysqlite2

# Install code versioning tools
RUN apt-get install -y subversion xsltproc xmlstarlet \
  && rm -rf /var/lib/apt/lists/*
    
# User management
RUN groupadd -g 1000 cmonkey && useradd -u 1000 -g 1000 -ms /bin/bash cmonkey && usermod -a -G users cmonkey

# Install SDKs
# Any .sh found will be installed.
ADD *.sh /tmp/
RUN /bin/bash -c 'for sdk in $(ls /tmp/*.sh); do chmod +x ${sdk}; ${sdk} -y; rm ${sdk}; done'

USER cmonkey

WORKDIR /home/workspace
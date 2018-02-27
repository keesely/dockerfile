FROM alpine:3.7

RUN apk add --no-cache --virtual .persistent-deps \
      ca-certificates \
      wget \
      gcc \
      g++ \
      curl \
      tar \
      xz \
      make \
      libressl \
      python

# Install Node.js

ENV NODE_VERSION 9.6.1
ENV NPM_VERSION 2.1.18


RUN cd /tmp \
  && wget "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
	&& wget "http://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"
# RUN cd /tmp \
# 	&& gpg --verify SHASUMS256.txt.asc \
# 	&& grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c -
RUN cd /tmp \
	&& tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
RUN set -xe \
	&& npm install -g npm \
	&& npm cache clear 
# && rm node-v$NODE_VERSION-linux-x64.tar.gz

# Define working directory.
WORKDIR /var/www

# Define default command.
CMD ["node"]

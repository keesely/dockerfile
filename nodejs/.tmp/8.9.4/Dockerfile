FROM alpine:3.7

ENV NODE_VERSION 9.6.1
ENV HOST 0.0.0.0
ENV PORT 8080

RUN adduser -D -u 1000 node

RUN apk add --no-cache \
  libstdc++ \
  bash \
  curl \
&& apk add --no-cache --virtual .persistent-deps \
      binutils-gold \
      g++ \
      gcc \
      gnupg \
      libgcc \
      linux-headers \
      make \
      ca-certificates \
      wget \
      tar \
      xz \
      libressl \
      python

# Install Node.js

RUN cd /tmp \
  && wget "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
	&& tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr --strip-components=1 \
  && rm node-v$NODE_VERSION-linux-x64.tar.gz

RUN set -xe \
	&& npm install -g npm \
  && printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc \
	&& npm cache clear

RUN set -xe \
mkdir -p /var/www

EXPOSE 8080

# Define working directory.
WORKDIR /var/www

# Define default command.
CMD ["node"]

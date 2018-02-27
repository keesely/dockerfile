FROM alpine:3.7

ENV NODE_VERSION 8.9.4

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
      curl \
      tar \
      xz \
      libressl \
      python

# Import gpg
# RUN set -xe \
# && for key in \
#   9554F04D7259F04124DE6B476D5A82AC7E37093B \
#   94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
#   FD3A5288F042B6850C66B31F09FE44734EB7990E \
#   71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
#   DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
#   B9AE9905FFD7803F25714661B63B535A4C206CA9 \
#   C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
#   56730D5401028683275BD23C23EFEFE93C4CFFFE \
# ; do \
#   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \
# done

# Install Node.js
RUN set -xe \
&& cd /tmp \
&& wget http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz \
# && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
# && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc \
# && grep " node-v$NODE_VERSION.tar.gz\$" SHASUMS256.txt | sha256sum -c - \
&& tar xvzf node-v$NODE_VERSION.tar.gz \
&& rm -f node-v$NODE_VERSION.tar.gz

RUN cd "/tmp/node-v$NODE_VERSION" \
&& ./configure \
&& make -j$(getconf _NPROCESSORS_ONLN) \
&& make install

RUN set -xe \
&& cd /tmp \
&& rm -rf /tmp/node-v$NODE_VERSION \
&& apk del .persistent-deps 

RUN set -xe \
npm install -g npm && \
printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc

RUN set -xe \
  mkdir -p /var/www

# Define working directory.
WORKDIR /var/www

# Define default command.
CMD ["node"]

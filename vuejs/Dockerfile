FROM kee/nodejs:alpine-cn

ENV HOST 0.0.0.0
ENV PORT 8080

RUN set -xe \
&& cnpm install -g vue-cli \
&& cnpm install vue-route \
&& cnpm install vue-resource

COPY app/ /var/www

# RUN cd /var/www \
# && npm install

EXPOSE 8080

WORKDIR /var/www

CMD ["npm", "run", "dev"]

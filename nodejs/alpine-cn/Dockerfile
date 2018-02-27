FROM alpine:3.7

ENV HOST 0.0.0.0
ENV PORT 8080

# 更换软件源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --no-cache nodejs \
&& npm install -g cnpm --registry=https://registry.npm.taobao.org

RUN mkdir -p /var/www

EXPOSE 8080

# Define working directory.
WORKDIR /var/www

# Define default command.
CMD ["node"]

FROM alpine:3.7

ENV HOST 0.0.0.0
ENV PORT 8080

RUN apk add --no-cache nodejs

RUN mkdir -p /var/www

EXPOSE 8080

# Define working directory.
WORKDIR /var/www

# Define default command.
CMD ["node"]

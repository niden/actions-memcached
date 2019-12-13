FROM alpine:3.10

RUN adduser -D memcache; \
    apk add --no-cache --update memcached

COPY entrypoint.sh /
ENTRYPOINT ["entrypoint.sh"]

USER memcache
EXPOSE 11211

CMD ["memcached"]
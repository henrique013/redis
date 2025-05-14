FROM redis:7.2.8-alpine3.21

ARG REDIS_PASS

COPY ./src/redis.conf /usr/local/etc/redis/redis.conf

EXPOSE 6379

CMD ["sh", "-c", "redis-server /usr/local/etc/redis/redis.conf --requirepass \"$REDIS_PASS\""]

#!/bin/sh

# set redis password if it is provided
if [ -n "$REDIS_PASS" ]; then
  echo "requirepass $REDIS_PASS" >> /usr/local/etc/redis/redis.conf
fi

exec redis-server /usr/local/etc/redis/redis.conf

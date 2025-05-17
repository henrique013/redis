FROM redis:7.2.8-alpine3.21

USER redis

COPY --chown=redis:redis ./src/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY --chown=redis:redis ./src/redis.conf /usr/local/etc/redis/redis.conf

RUN chmod 755 /usr/local/bin/entrypoint.sh

EXPOSE 6379

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

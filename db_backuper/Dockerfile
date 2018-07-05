FROM postgres:9.6
RUN apt-get update && \
    apt-get install -y cron && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
COPY backup.sh /
RUN chmod +x /backup.sh
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
VOLUME /backups
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["cron", "-f"]
FROM ttbb/doris:nake

WORKDIR /opt/doris

COPY docker-build /opt/doris/mate

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/doris/mate/scripts/start.sh"]

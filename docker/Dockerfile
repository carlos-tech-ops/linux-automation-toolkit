FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y bash && \
    rm -rf /var/lib/apt/lists/*

COPY disk_alert.sh /usr/local/bin/disk_alert.sh
RUN chmod +x /usr/local/bin/disk_alert.sh

CMD ["/usr/local/bin/disk_alert.sh"]

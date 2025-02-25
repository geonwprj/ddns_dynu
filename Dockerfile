FROM alpine:latest

RUN apk add --no-cache curl

COPY update_ddns.sh /usr/local/bin/update_ddns.sh
RUN chmod +x /usr/local/bin/update_ddns.sh

CMD ["sh", "/usr/local/bin/update_ddns.sh"]

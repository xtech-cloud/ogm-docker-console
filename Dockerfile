FROM alpine:3.11

RUN apk add --no-cache ca-certificates mailcap
ADD caddy /usr/bin/caddy
RUN chmod +x /usr/bin/caddy
ADD dist.tar.gz /root/
ADD Caddyfile /root/

EXPOSE 80
EXPOSE 443
EXPOSE 2019

CMD ["caddy", "run", "--config", "/root/Caddyfile" ]

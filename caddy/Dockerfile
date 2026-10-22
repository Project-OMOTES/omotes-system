FROM golang:1.27.3-alpine3.23 AS builder

RUN apk add --no-cache git \
    && go install github.com/caddyserver/xcaddy/cmd/xcaddy@v0.4.5

RUN xcaddy build v2.11.7 \
    --with github.com/porech/caddy-maxmind-geolocation@9066f91c9696fcf554a0230ea768301259708ff1 \
    --output /usr/bin/caddy

FROM caddy:2.11.7-alpine

RUN apk add --no-cache --upgrade ca-certificates \
    && mkdir -p /geo-db

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
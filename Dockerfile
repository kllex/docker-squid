FROM quay.io/official-images/alpine:3.18.4

RUN apk --no-cache add --update squid
RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

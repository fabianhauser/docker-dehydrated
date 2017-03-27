FROM nginx:alpine

ARG DEHYDRATED_VERSION=v0.4.0

RUN apk add --no-cache curl bash openssl
ADD https://raw.githubusercontent.com/lukas2511/dehydrated/${DEHYDRATED_VERSION}/dehydrated /usr/local/bin/
RUN chmod a+x /usr/local/bin/dehydrated

ADD sites.conf dehydrated.conf /etc/nginx/conf.d/

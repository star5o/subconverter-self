FROM tindy2013/subconverter
LABEL maintainer="Stille <stille@ioiox.com>"

ENV VERSION 0.9.0

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY ACL4SSR_self_Online_Full.ini /base/config/

EXPOSE 25500

WORKDIR /base

CMD subconverter

FROM tindy2013/subconverter
LABEL maintainer="star5o <jkliyakai@163.com>"

ENV VERSION 0.1

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata


COPY pref.toml /base/
COPY main.ini /base/config/

EXPOSE 25500

WORKDIR /base

CMD subconverter

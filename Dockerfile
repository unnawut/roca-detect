FROM alpine:3.6

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    ca-certificates \
    libffi-dev \
    openssl-dev \
    && rm -rf /var/cache/apk/*

RUN pip install roca-detect

CMD ["roca-detect", "/keys"]

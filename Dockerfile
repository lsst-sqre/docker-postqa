FROM alpine:3.7

ARG POSTQA_VER=1.3.2

RUN apk add --no-cache --upgrade python3 bash git xz && \
    pip3 install post-qa=="$POSTQA_VER" --upgrade --no-cache-dir && \
    rm -rf /root/.cache

CMD ["/usr/local/bin/post-qa"]

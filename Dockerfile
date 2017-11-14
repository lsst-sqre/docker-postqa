FROM docker.io/python:3.6.3
MAINTAINER sqre-admin

ARG POSTQA_VER=1.3.2

RUN pip install post-qa=="$POSTQA_VER" --no-cache-dir

CMD ["/usr/local/bin/post-qa"]

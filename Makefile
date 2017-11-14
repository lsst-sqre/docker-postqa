all: build

POSTQA_VER=1.3.2

build:
	docker build \
		--build-arg POSTQA_VER=${POSTQA_VER} \
		-t docker.io/lsstsqre/postqa:${POSTQA_VER} .

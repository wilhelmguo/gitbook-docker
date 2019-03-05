FROM node:6-slim

MAINTAINER William Guo <shaowei3608@gmail.com>

ARG GITBOOK_VERSION=3.2.3

LABEL version=$GITBOOK_VERSION

RUN npm config set registry https://registry.npm.taobao.org && \
	npm install --global gitbook-cli &&\
	gitbook fetch ${VERSION} &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook

EXPOSE 4000 35729

FROM node:14-alpine
RUN apk add -U subversion

FROM r-base

COPY * /data/

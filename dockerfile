FROM node:21-slim

RUN apt update && apt install -y \
  openssl \
  procps && \
  npm install -g @nestjs/cli@10.3.2 pnpm

WORKDIR /home/node/app

USER node

CMD tail -f /dev/null
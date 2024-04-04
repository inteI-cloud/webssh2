FROM node:14.21.0-alpine

WORKDIR /usr/src
COPY app/ /usr/src/
RUN npm install --production
EXPOSE 2222/tcp
ENTRYPOINT [ "/usr/local/bin/node", "index.js" ]

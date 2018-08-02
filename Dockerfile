FROM node:10

COPY --chown=node:node package.json package-lock.json /home/node/
WORKDIR /home/node
RUN npm install &&\
    npm run build

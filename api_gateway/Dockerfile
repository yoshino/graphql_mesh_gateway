FROM node:14.10

ENV NODE_ROOT /app
WORKDIR $NODE_ROOT
RUN mkdir -p $NODE_ROOT
ADD package.json $NODE_ROOT
ADD yarn.lock $NODE_ROOT
ADD .meshrc.yaml $NODE_ROOT
ADD open_api.yaml $NODE_ROOT

RUN yarn install

EXPOSE 4000

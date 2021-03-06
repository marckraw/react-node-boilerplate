FROM node:latest

RUN mkdir -p /frontend
WORKDIR /frontend

ADD /frontend /frontend

VOLUME ["/frontend"]

CMD yarn && yarn build && rm -rf /shared/build && mv build /shared
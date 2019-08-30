FROM node:10

ARG SECRET=empty-secret

WORKDIR /app

ENV SERVICE_PORT 4000
ENV SECRET ${SECRET}

ADD package.json .
ADD src ./src
RUN npm install

EXPOSE ${SERVICE_PORT}
CMD ["node", "src/index.js"]
FROM node:21-alpine3.18

WORKDIR /app/server

COPY package.json ./

RUN yarn install

EXPOSE $PORT

COPY . .

CMD ["yarn", "start"]
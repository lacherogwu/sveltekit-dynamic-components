FROM node:lts-alpine as build

WORKDIR /app

COPY package*.json .

COPY svelte.config.js .

COPY src/routes src/routes

RUN npm ci

COPY . .

RUN npm run build

FROM node:lts-alpine

COPY --from=build ./app/build ./build

COPY --from=build ./app/node_modules ./node_modules

COPY package.json .

EXPOSE 3000

CMD ["node", "build"]
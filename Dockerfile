FROM node:14.15-alpine

WORKDIR /build

COPY . .

RUN yarn

RUN yarn tsc

RUN yarn install --production

FROM node:14.15-alpine

WORKDIR /app

COPY --from=0 /build/index.js .
COPY --from=0 /build/package.json .
COPY --from=0 /build/node_modules ./node_modules

VOLUME [ "/upload" ]
EXPOSE 3000

CMD ["node", "index.js"]
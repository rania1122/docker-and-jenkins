FROM node:alpine

WORKDIR /nextjs

COPY . /nextjs/

RUN npm install

RUN npm run build
EXPOSE 3000
CMD npm run start

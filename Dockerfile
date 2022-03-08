FROM node:alpine

WORKDIR /next

COPY . /next/

RUN npm install

RUN npm run build
EXPOSE 3000
CMD npm run start

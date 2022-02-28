FROM node:alpine

WORKDIR /nextjs

COPY . /nextjs/

RUN npm install

EXPOSE 3000
CMD npm run dev

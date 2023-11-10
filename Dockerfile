FROM node:20.9.0-alpine3.18

WORKDIR /usr/src/app

COPY ./app/package*.json ./
RUN npm install
COPY ./app .

EXPOSE 3000
CMD ["npm", "start"]

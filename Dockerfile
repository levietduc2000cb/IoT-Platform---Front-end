#build app
FROM node:latest
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
COPY package*.json /usr/src/app/
COPY . .
RUN npm install
EXPOSE 3000
RUN npm run build
CMD [ "npm", "start" ]
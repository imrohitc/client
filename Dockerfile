FROM node:21

WORKDIR /app/client

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start", "--", "--host", "0.0.0.0"]
FROM node:13.8.0-alpine
LABEL maintainer="Rodrigo Leme"

COPY . /var/www
WORKDIR /var/www
RUN npm install

ENTRYPOINT ["npm", "start"]
EXPOSE 3000
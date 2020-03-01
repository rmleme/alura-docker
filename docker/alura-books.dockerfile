FROM node:13.8.0-alpine
LABEL maintainer="Rodrigo Leme"

ENV NODE_ENV=development

COPY . /var/www
WORKDIR /var/www
RUN npm install

EXPOSE 3000
ENTRYPOINT ["npm", "start"]
FROM node:8.11.1

RUN mkdir /src

RUN npm install express-generator -g

WORKDIR /src
ADD app/package.json /src/package.json
RUN npm install

EXPOSE 3000
EXPOSE 9222

CMD node --inspect=0.0.0.0:9222 app/bin/www
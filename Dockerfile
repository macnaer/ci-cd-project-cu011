FROM node:latest

WORKDIR /var/app/
COPY . /var/app/

RUN npm install && cd client-app && npm install && cd ..
ENV NODE_OPTIONS=--openssl-legacy-provider

EXPOSE 80
EXPOSE 3000
CMD ["npm", "run", "dev"]


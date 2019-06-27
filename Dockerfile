
FROM alpine
LABEL maintainer="mouhtashim5@gmail.com"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src
RUN npm install
ENV CREATEDBY="Mohtashim"
EXPOSE 8080
ENTRYPOINT ["node", "./app.js"]
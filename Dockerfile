
FROM node:alpine
LABEL Name="clixplorer"
LABEL Version="2.1"
RUN npm install
RUN npm install i -g browserify
FROM nginx:alpine

ADD nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html
EXPOSE 8080 80
CMD ["nginx"]
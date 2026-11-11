FROM nginx:1.27-alpine
COPY ./html/index.html /usr/share/nginx/html/index.html
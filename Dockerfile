FROM nginx:latest
RUN sed -i 's/nginx/anicet/g' /usr/share/nginx/html/index.html
EXPOSE 80


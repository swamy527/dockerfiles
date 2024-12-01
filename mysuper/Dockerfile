FROM nginx

RUN rm -rf /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

COPY . .

RUN chmod -R 777 /usr/share/nginx/html

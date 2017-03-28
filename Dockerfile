FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
VOLUME /etc/nginx/certs

EXPOSE 443


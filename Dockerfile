FROM nginx

VOLUME /etc/nginx/certs

COPY nginx.conf /etc/nginx/nginx.conf
COPY dhparam.pem /etc/nginx/dhparam.pem
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY snippets/ssl-params.conf /etc/nginx/snippets/ssl-params.conf

# customizable
COPY snippets/ssl.conf /etc/nginx/snippets/ssl.conf

EXPOSE 443


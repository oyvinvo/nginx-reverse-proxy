FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/cert.crt
COPY cert.key /etc/nginx/cert.key



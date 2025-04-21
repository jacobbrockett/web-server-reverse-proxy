# Dockerfile
FROM nginx:alpine

# Create directory for SSL certs
RUN mkdir -p /etc/nginx/ssl

# Copy Nginx configuration and SSL files
COPY default.conf /etc/nginx/conf.d/default.conf
COPY ssl/certs/nginx-selfsigned.crt /etc/nginx/ssl/selfsigned.crt
COPY ssl/private/nginx-selfsigned.key /etc/nginx/ssl/selfsigned.key

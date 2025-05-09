# reverse-proxy/Dockerfile
FROM nginx:alpine
RUN mkdir -p /etc/nginx/ssl

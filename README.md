# web-server-reverse-proxy
Containerized reverse proxy for running multiple containerized nginx server on one AWS EC2 instance.

## Docker
1. Generate Keys and Certs

`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./ssl/private/nginx-selfsigned.key -out ./ssl/certs/nginx-selfsigned.crt`

`sudo openssl dhparam -out ./ssl/certs/dhparam.pem 2048`

You may need to make the ./ssl/certs and ./ssl/private directories first!

2. Build Docker Image

`docker build -t nginx-reverse-proxy .`

3. Run Docker Container

`docker run -d --name reverse-proxy -p 443:443 nginx-reverse-proxy `


# nginx-reverse-proxy
Configuration for a reverse proxy using nginx and docker.

## Howto

### Configure
Edit nginx.conf and replace the servername and port with your own.

### Generate a certificate for HTTPS.
```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cert.key -out cert.crt
```
### Build the docker image
```
docker build -t nginx-reverse-proxy .
```

### Run
```
docker run -p 443:443 --name nginx-reverse-proxy -d nginx-reverse-proxy
```

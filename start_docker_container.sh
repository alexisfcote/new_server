docker build -t app:latest .
docker run -e secretkey='hksd721219fdh' --name container --rm -p 80:80 app
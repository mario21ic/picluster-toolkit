Buildx set-up
```
$ docker buildx create --name myarm64
$ docker buildx use myarm64
$ docker buildx ls
$ docker buildx inspect --bootstrap
```

Dockerfile:
```
FROM nginx:alpine
#RUN apt-get update && apt-get install -y curl
#WORKDIR /src
COPY index.html /usr/share/nginx/html/index.html
```

Build
```
$ docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t mario21ic/nginx . --push
```

## 简单的 docker nginx 环境

1. Dockerfile

```
FROM nginx
EXPOSE 3000
```

2. 构建镜像

```bash
 docker build -t learn-nginx-image .
  #  -t: image name
  #  .: Dockerfile url
```

3. 运行容器

```bash
docker run -dp 127.0.0.1:8080:80 learn-nginx-image
```

4. 进入容器

```bash
docker exec -it <container> bash
```

## config

/etc/nginx/conf.d/default.conf

```
server {
 listen 80 default_server;
 server_name www.example.com;
 location / {
 root /usr/share/nginx/html;
 # alias /usr/share/nginx/html;
 index index.html index.htm;
 }
}
```

default_server: 如果没有匹配到其他服务器名,使用这个 server
server_name: 根据 http 的 host 匹配
location: 路由
root: 根目录

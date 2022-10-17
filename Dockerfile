FROM ubuntu
LABEL maintainer="SoftUni Student"
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*
COPY web/ /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80


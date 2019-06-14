FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y nginx

# Copy virtualhost
COPY .configs/nginx/conf.d/glpi.example.com.conf /etc/nginx/conf.d/

EXPOSE 80 

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

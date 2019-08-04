# Stage 2 - Nginx environment
FROM nginx:1.15
# Install all debian packages
RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
	vim \
	curl \
	net-tools \
	--no-install-recommends \
	python-certbot-nginx -t stretch-backports && rm -rf /var/lib/apt/lists/*

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./uwsgi_params /app/uwsgi_params

WORKDIR /etc/nginx

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
FROM httpd
LABEL maintainer="Gudditi"
WORKDIR /usr/local/apache2/htdocs/
COPY index.html .
EXPOSE 80

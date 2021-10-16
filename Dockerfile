FROM scratch

ADD ubuntu-base-20.04.3-base-amd64.tar.gz /

RUN apt-get update

RUN apt-get install nginx -y

CMD ["/bin/bash"]

COPY index.html /var/www/html/

EXPOSE 80

CMD service nginx start

CMD ["nginx", "-g", "daemon off;"]

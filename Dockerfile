FROM ubuntu:18.04

WORKDIR /CapstoneNginx

RUN #hadolint ignore=DL3013 &&\
    pip install --upgrade pip &&\
    pip install nginx 

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx"]

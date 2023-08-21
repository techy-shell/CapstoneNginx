FROM ubuntu:18.04

WORKDIR /ProjectTest/CapstoneProject

RUN #hadolint ignore=DL3013 &&\
    pip install --upgrade pip &&\
    pip install nginx 

COPY nginx.config ./ProjectTest/CapstoneProject/nginx.config
COPY ./www ./ProjectTest/CapstoneProject/www

EXPOSE 80
CMD ["nginx"]

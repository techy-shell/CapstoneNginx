FROM ubuntu:18.04

WORKDIR /ProjectTest/CapstoneProject

RUN #hadolint ignore=DL3013 &&\
    pip install --upgrade pip &&\
    pip install nginx &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

COPY nginx.config ./ProjectTest/CapstoneProject/nginx.config
COPY ./www ./ProjectTest/CapstoneProject/www

EXPOSE 80
CMD ["nginx"]

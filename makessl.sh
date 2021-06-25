#!/bin/sh

mkdir certificate

openssl req -new -newkey rsa:4096 -nodes \
    -keyout certificate/nginx-selfsigned.key -out certificate/nginx-selfsigned.crt \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com"
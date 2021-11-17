FROM nginx:alpine
LABEL maintainer="Peter Stadler for the ViFE"
LABEL org.opencontainers.image.source="https://github.com/Edirom/ViFE-website"
COPY . /usr/share/nginx/html/

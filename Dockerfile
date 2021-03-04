FROM jekyll/jekyll:builder as builder

WORKDIR /var/jekyllbuilder
COPY . .

# CAVEAT: need to create the directories first
# for Jekyll to build properly
RUN npm i && \
    mkdir .jekyll-cache _site && \
    jekyll build

#################
# nginx
#################
FROM nginx:alpine
LABEL maintainer="Peter Stadler for the ViFE"
LABEL org.opencontainers.image.source="https://github.com/Edirom/ViFE-website"

COPY --from=builder /var/jekyllbuilder/_site/  /usr/share/nginx/html/

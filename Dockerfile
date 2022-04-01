FROM jekyll/jekyll:builder as builder

ENV WORK_DIR=/var/jekyllbuilder

# since WORKDIR will not honour the USER directive
# we need to create the directory and set permissions in advance
RUN mkdir -p ${WORK_DIR} && \
    chown -R jekyll:jekyll ${WORK_DIR}

# set default jekyll user for building
USER jekyll:jekyll
WORKDIR ${WORK_DIR}
COPY --chown=jekyll . .

# build local
RUN npm i && \
    npm run build && \
    bundle config set --local path 'vendor/bundle' && \
    bundle install && \
    bundle exec jekyll build

#################
# nginx
#################
FROM nginx:alpine
LABEL maintainer="Peter Stadler for the ViFE"
LABEL org.opencontainers.image.source="https://github.com/Edirom/ViFE-website"

COPY --from=builder /var/jekyllbuilder/_site/  /usr/share/nginx/html/

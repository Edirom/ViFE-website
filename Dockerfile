FROM ruby:3 AS builder

ENV WORK_DIR=/var/jekyllbuilder
ARG BUILD_SCRIPT=build

WORKDIR ${WORK_DIR}
COPY . .

# install dependencies
RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y --no-install-recommends nodejs npm \
    # clean up apt cache
    && rm -rf /var/lib/apt/lists/*

# build local
RUN npm i && \
    bundle config set --local path 'vendor/bundle' && \
    npm run ${BUILD_SCRIPT}

#################
# nginx
#################
FROM nginx:alpine
LABEL org.opencontainers.image.authors="Peter Stadler for the ViFE"
LABEL org.opencontainers.image.source="https://github.com/Edirom/ViFE-website"

COPY --from=builder /var/jekyllbuilder/_site/  /usr/share/nginx/html/

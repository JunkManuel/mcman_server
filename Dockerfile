# FROM ghcr.io/paradigmmc/mcman:latest as builder
# WORKDIR /server
# COPY . .
# RUN mcman build

FROM eclipse-temurin:17-jre
USER 1000:1000
COPY --chown=1000:1000 ./server /server
WORKDIR /server
ENTRYPOINT [ "/server/start.sh" ]

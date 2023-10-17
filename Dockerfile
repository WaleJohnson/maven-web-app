# syntax=docker/dockerfile:1
FROM docker
COPY --from=docker/buildx-bin /buildx /var/lib/docker/cli-plugins/docker-buildx
RUN docker buildx version

FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY web-app/target/*.war /usr/local/tomcat/webapps

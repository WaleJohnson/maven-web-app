# syntax=docker/dockerfile:1.6.0
FROM docker
COPY --from=docker/buildx-bin /buildx /var/lib/docker/cli-plugins/docker-buildx
RUN docker buildx version

FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/*.war /usr/local/tomcat/webapps

FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/*.war /usr/local/tomcat/webapps

RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install

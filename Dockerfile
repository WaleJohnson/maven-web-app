FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY web-app/target/*.war /usr/local/tomcat/webapps

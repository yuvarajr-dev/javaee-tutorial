FROM  tomcat:latest

COPY ./tomcat /usr/local/tomcat/webapps  
COPY ./target /usr/local/tomcat/webapps

EXPOSE 8080

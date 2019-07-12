FROM  tomcat:latest

# Environment variables do not appear to be getting loaded the first time Tomcat starts!
ENV JDBC_URL: jdbc:mysql://:3306/giit?connectTimeout=0&amp;socketTimeout=0&amp;autoReconnect=true \
    MYSQL_USER: example_db_user \
    MYSQL_PASSWORD: example_db_pass \
  
COPY ./target/:/usr/local/tomcat/webapps

EXPOSE 8080

FROM tomcat:8.0.51-jre8-alpine
COPY ./target/airlines-demo*.jar /usr/local/tomcat/webapps
EXPOSE  8080
USER airlines-demo
WORKDIR /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]
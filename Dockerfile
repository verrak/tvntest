FROM tomcat:latest
LABEL version="1.0"

ADD /target/demo.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]

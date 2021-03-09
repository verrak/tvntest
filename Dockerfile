FROM tomcat:latest
LABEL version="1.0"

ADD /var/lib/jenkins/workspace/tvntest1/target/demo.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]

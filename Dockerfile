FROM tomcat:9-jdk11
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN cp -r WebContent/* /usr/local/tomcat/webapps/*
EXPOSE 8080
CMD ["catalina.sh", "run"]

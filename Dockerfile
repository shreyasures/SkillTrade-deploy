FROM tomcat:9.0
COPY target/your-app-name.war /usr/local/tomcat/webapps/ROOT.war

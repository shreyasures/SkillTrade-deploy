

FROM tomcat:9.0-jdk17

# Remove default apps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to ROOT.war
COPY target/SkillTrade.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

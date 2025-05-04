FROM tomcat:9.0
COPY target/SkillTrade.war /usr/local/tomcat/webapps/ROOT.war

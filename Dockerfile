# Step 1: Build the WAR using Maven
FROM maven:3.8.1-openjdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Step 2: Deploy WAR to Tomcat
FROM tomcat:9.0
COPY --from=builder /app/target/SkillTrade.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

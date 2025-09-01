# Use Tomcat 9
FROM tomcat:9.0

# Copy the WAR file from Maven target
COPY target/*.war /usr/local/tomcat/webapps/app.war

# Expose Tomcat port
EXPOSE 8080

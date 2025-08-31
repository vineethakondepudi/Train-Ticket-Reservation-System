
# Use Tomcat base image
FROM tomcat:9.0

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps
COPY target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

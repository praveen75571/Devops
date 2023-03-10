# syntax=docker/dockerfile:1
#FROM openjdk:8
#EXPOSE 8080
#ADD target/02-SpringMVC-0.0.1-SNAPSHOT.war 02-SpringMVC-0.0.1-SNAPSHOT.war
#ENTRYPOINT ["java","-jar","/target/02-SpringMVC-0.0.1-SNAPSHOT.war"]

#FROM Tomcat:8
#ADD http://localhost:/artifactory/libs-snapshot-local/BeverageStore.war /usr/local/tomcat/webapps/
#EXPOSE 8900

# Use a base image that has a Java runtime environment installed
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the .war file to the container
COPY /target/02-SpringMVC-0.0.1-SNAPSHOT.war .

# Expose the port that the application listens on
EXPOSE 8080

# Set the command to run when the container starts
CMD ["java", "-jar", "02-SpringMVC-0.0.1-SNAPSHOT.war", "com.mycompany.MyMainClass"]


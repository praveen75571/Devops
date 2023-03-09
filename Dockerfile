# syntax=docker/dockerfile:1
FROM openjdk:8
EXPOSE 8080
ADD target/02-SpringMVC-0.0.1-SNAPSHOT.war 02-SpringMVC-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/02-SpringMVC-0.0.1-SNAPSHOT.war"

#FROM Tomcat:8
#ADD http://localhost:/artifactory/libs-snapshot-local/BeverageStore.war /usr/local/tomcat/webapps/
#EXPOSE 8900

FROM Tomcat:8
ADD http://localhost:/artifactory/libs-snapshot-local/BeverageStore.war /usr/local/tomcat/webapps/
EXPOSE 8900
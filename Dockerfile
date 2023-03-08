# syntax=docker/dockerfile:1
FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python /app/app.py

#FROM Tomcat:8
#ADD http://localhost:/artifactory/libs-snapshot-local/BeverageStore.war /usr/local/tomcat/webapps/
#EXPOSE 8900

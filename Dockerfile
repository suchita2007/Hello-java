# Pull base image 
From tomcat:8-jre8 
# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY *.war /usr/local/tomcat/webapps


CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app

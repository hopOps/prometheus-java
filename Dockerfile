FROM psmonitoring/tomcat-exporter:0.0.6
FROM tomcat:9.0.8

MAINTAINER f.collen@gmail.com


ENV WEBAPP_HOME ${CATALINA_HOME}/webapps/

WORKDIR ${WEBAPP_HOME}
COPY jars/*.jar ${CATALINA_HOME}/lib/

COPY tomcat_exporter_servlet-0.0.10.war ./metrics.war


COPY sample.war .

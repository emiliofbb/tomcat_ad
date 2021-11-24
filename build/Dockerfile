FROM tomcat

COPY mysql-connector-java-8.0.27.jar /usr/local/tomcat/lib/mysql-connector-java-8.0.27.jar

CMD sh /usr/local/tomcat/bin/catalina.sh start && tail -f /usr/local/tomcat/logs/catalina.out

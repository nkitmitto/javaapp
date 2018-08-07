# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:12.04

MAINTAINER Kimbro Staken version: 0.1

RUN apt-get update && apt-get install -y tomcat7 && apt-get clean

EXPOSE 8080

CMD ["/usr/lib/jvm/default-java/bin/java", "-Djava.util.logging.config.file=/var/lib/tomcat7/conf/logging.properties", "-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager", "-Djava.awt.headless=true", "-Xmx128m", "-XX:+UseConcMarkSweepGC", "-Djava.endorsed.dirs=/usr/share/tomcat7/endorsed", "-classpath", "/usr/share/tomcat7/bin/bootstrap.jar:/usr/share/tomcat7/bin/tomcat-juli.jar", "-Dcatalina.base=/var/lib/tomcat7", "-Dcatalina.home=/usr/share/tomcat7", "-Djava.io.tmpdir=/tmp/tomcat7-tomcat7-tmp", "org.apache.catalina.startup.Bootstrap", "start"]

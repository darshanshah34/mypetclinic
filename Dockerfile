FROM registry.access.redhat.com/ubi8/openjdk-11
COPY target/*.jar /opt/spring-petclinic.jar
CMD java -jar -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8787 /opt/spring-petclinic.jar
EXPOSE 8080

FROM registry.redhat.io/redhat-openjdk-18/openjdk18-openshift:1.11-1.1645809450
COPY passwordapi.jar /home/jboss
CMD ["java","-jar","/home/jboss/passwordapi.jar"]
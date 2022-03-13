FROM registry.redhat.io/redhat-openjdk-18/openjdk18-openshift:1.11-1.1645809450
USER root
RUN mkdir /usr/src/passwordapi
WORKDIR /usr/src/passwordapi
COPY passwordapi.jar /usr/src/passwordapi
USER jboss
EXPOSE 8080
CMD ["java","-jar","/usr/src/passwordapi/passwordapi.jar"]
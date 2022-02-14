#FROM maven:3.5.2-jdk-9 AS build
#COPY src /usr/src/app/s#rc
#COPY pom.xml /usr/src/app
#RUN mvn -f /usr/src/app/pom.xml clean package

FROM openjdk:9
COPY target/MavenGeneratorWeb.war /usr/app/MavenGeneratorWeb.war 
EXPOSE 8089
ENTRYPOINT ["java","-jar","/usr/app/MavenGeneratorWeb.war"]

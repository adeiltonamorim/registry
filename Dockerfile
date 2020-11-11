FROM openjdk:11
VOLUME /tmp
EXPOSE 8761
ARG JAR_FILE=build/libs/registry-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} registry.jar
ENTRYPOINT ["java","-jar","/registry.jar"]
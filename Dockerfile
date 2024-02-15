FROM adoptopenjdk/openjdk11:alpine-slim 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 80
ENTRYPOINT ["java","-jar","/app.jar"]

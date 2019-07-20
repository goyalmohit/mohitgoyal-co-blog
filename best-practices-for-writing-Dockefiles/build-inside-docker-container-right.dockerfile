FROM maven:3.6.1-jdk-8 As BUILD
WORKDIR /Src
COPY Src .
RUN mvn clean package 

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=BUILD /Src/target/app.jar .
RUN ["java","-jar", "/app/app.jar"]
FROM openjdk:8
WORKDIR /app
COPY Src .
...
RUN ["java","-jar", "/app/target/app.jar"]
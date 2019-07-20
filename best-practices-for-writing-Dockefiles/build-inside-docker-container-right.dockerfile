FROM maven:3.6.1-jdk-8 As BUILD
WORKDIR /Src
COPY Src .
RUN mvn clean package 
RUN ["java","-jar", "/Src/target/app.jar"]
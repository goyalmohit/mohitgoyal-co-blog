FROM ubuntu:latest
WORKDIR /app
COPY . .
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  software-properties-common 
RUN add-apt-repository ppa:webupd8team/java -y
...
RUN ["java","-jar", "/app/target/app.jar"]
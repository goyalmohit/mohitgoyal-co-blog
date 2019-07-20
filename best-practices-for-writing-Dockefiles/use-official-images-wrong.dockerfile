FROM ubuntu:latest
WORKDIR /app
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java7-installer --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY Src .
...
RUN ["java","-jar", "/app/target/app.jar"]
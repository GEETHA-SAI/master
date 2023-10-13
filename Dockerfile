FROM maven:3.9.3-eclipse-temurin-17-alpine as sampleimage
RUN java -version
WORKDIR /myapp
COPY . /myapp
RUN ls
RUN mvn clean install
WORKDIR /myapp/target
RUN ls -l
ENTRYPOINT java -jar sampleproject-1.0-SNAPSHOT.jar
EXPOSE 8041






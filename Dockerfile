FROM maven
WORKDIR /usr/src/mymaven
ADD . /usr/src/mymaven
RUN mvn clean install
ENV key=value
ENTRYPOINT ["java","-jar","target/MavenHelloWorldProject-1.0-SNAPSHOT.jar"]

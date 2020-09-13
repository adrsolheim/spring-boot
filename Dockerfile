#FROM maven:3.6.3-jdk-14

#ADD . /springbootvuejs
#WORKDIR /springbootvuejs

# just a check
#RUN ls -l

# Run Maven build
#RUN mvn clean install

# Just using the build artifact and then removing the build-cntainer
FROM openjdk:14-jdk

MAINTAINER adrsolheim

VOLUME /tmp


# Add Spring Boot app.jar to container
COPY  ./backend/target/webapp-backend-0.0.1-SNAPSHOT.jar app.jar

ENV JAVA_OPTS=""

COPY ./entrypoint.sh /entrypoint.sh

# Run our Spring Boot app by default
#ENTRYPOINT [ "sleep 15", "&&", "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/urandom -jar /app.jar" ]
ENTRYPOINT ["/bin/bash", "-c", "/entrypoint.sh"]

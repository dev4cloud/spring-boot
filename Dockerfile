FROM openjdk:8-slim

ADD . /app

RUN cd /app && ./gradlew build && rm -rf ~/.gradle

CMD java -jar /app/build/libs/spring-boot-0.1.0.jar

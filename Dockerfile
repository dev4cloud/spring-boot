FROM oracle/openjdk

ADD . /app

RUN cd /app && ./gradlew build

CMD java -jar /app/build/libs/hello-dev4cloud-0.1.0.jar

FROM gradle:5.5.1 as build

ADD . /home/gradle/project
WORKDIR /home/gradle/project
RUN gradle build

FROM openjdk:11
COPY --from=0 /home/gradle/project/build/libs/helloworld.jar /app/helloworld.jar
ENTRYPOINT java -jar /app/helloworld.jar

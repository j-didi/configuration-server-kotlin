FROM openjdk:17-jdk-alpine AS BUILD_IMAGE
WORKDIR /app
ADD . /app
RUN ./gradlew clean bootJar

FROM openjdk:17-alpine
COPY --from=BUILD_IMAGE /app/build/libs/configuration-server-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java","-jar","configuration-server-0.0.1-SNAPSHOT.jar"]


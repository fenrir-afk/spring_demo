FROM ubuntu:latest as build
FROM eclipse-temurin:20-jdk-alpine
EXPOSE 8080
WORKDIR /opt/app
COPY --from=build /build/libs/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
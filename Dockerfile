FROM eclipse-temurin:20-jdk-alpine as build

#Copythe application code into the image
COPY . /usr/src/my-app

# Set the working directory
WORKDIR /usr/src/my-app

#Build the application using gradle
RUN gradle build

# Copy the built application into the image
COPY --from=build /build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Set the entrypoint for
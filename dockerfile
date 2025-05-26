# Use a base image with Java
FROM openjdk:25-slim AS build

# Install Maven
RUN apt-get update && apt-get install -y maven && apt-get clean

# Set the working directory
WORKDIR /app

# Copy the pom.xml and the source code
COPY pom.xml .
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# Use the same base image for the final image
FROM openjdk:25-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY --from=build /app/target/hello-world-api-1.0-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

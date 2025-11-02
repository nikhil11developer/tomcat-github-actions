# Use a lightweight Java runtime
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy JAR file
COPY target/*.jar app.jar

# Run Spring Boot app
ENTRYPOINT ["java","-jar","/app/app.jar"]

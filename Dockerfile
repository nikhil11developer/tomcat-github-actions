# Step 1: Use an official JDK image to build
FROM openjdk:17-jdk-slim

# Step 2: Copy the JAR from the target folder into the image
COPY target/*.jar app.jar

# Step 3: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

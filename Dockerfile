# Use an official Java 17 runtime as base image
FROM openjdk:17-jdk-slim

# Set environment variable for port
ENV PORT=8080

# Create app directory
WORKDIR /app

# Copy the built JAR file (update path if needed)
COPY build/libs/skill-connect-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8080

# Command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

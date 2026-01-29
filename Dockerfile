# Use a modern lightweight Java runtime
FROM eclipse-temurin:21-jre

# Set working directory inside container
WORKDIR /app

# Copy the fat jar into the container at /app
COPY target/*.jar app.jar


# Make port 8080 available to the world outside this container
EXPOSE 8080

# Ensure Spring Boot listens on all interfaces in container
ENV SERVER_ADDRESS=0.0.0.0
ENV SERVER_PORT=8080

# Run jar file when the container launches
ENTRYPOINT ["java", "-jar", "app.jar"]

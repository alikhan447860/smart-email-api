# Use Java 21 image
FROM eclipse-temurin:21-jdk-alpine

# Create directory in container
WORKDIR /app

# Copy jar from host to container
COPY target/email-writer-sb-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
EXPOSE 8080

# Run jar
ENTRYPOINT ["java", "-jar", "app.jar"]

# Use Eclipse Temurin JDK 21 as base
FROM eclipse-temurin:21-jdk-alpine

# Set app directory inside container
WORKDIR /app

# Copy the jar file to container
COPY target/employee-gateway-0.0.1-SNAPSHOT.jar app.jar

# Expose port (default gateway port if set to 8080)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]

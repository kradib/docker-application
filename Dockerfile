# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the host to the container
COPY target/referral-system-0.0.1-SNAPSHOT.jar /app/referral-system.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/referral-system.jar"]

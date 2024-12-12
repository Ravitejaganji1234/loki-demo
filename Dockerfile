# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY target/*.jar app.jar

# Expose the port your Spring Boot application runs on
EXPOSE 8086

# Define environment variables for the database (optional, if configured in the application.properties/yml)
ENV SPRING_DATASOURCE_URL=jdbc:mysql://host.docker.internal:3306/tasks?createDatabaseIfNotExist=true
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=Soz365718@

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

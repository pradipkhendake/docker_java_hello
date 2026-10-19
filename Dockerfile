# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY Main.java /app/

# Compile the Java source file
RUN javac Main.java

# Run the Java program when the container starts
CMD ["java", "Main"]

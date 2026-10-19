FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY Main.java /app/
RUN javac Main.java
CMD ["java", "Main"]

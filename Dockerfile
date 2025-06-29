FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package

FROM eclipse-temurin:17-jdk
WORKDIR /app

COPY --from=build /app/target/javaapp-1.0-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]

FROM maven:3-eclipse-temurin-21-alpine AS builder
WORKDIR /app
COPY pom.xml pom.xml
RUN mvn install -f pom.xml --non-recursive
COPY . .
RUN mvn package -f pom.xml -DskipTests


# FROM amazoncorretto:21-alpine
# WORKDIR /app
# RUN mkdir /app/logs
# COPY --from=builder /app
# CMD java $JAVA_OPTS -jar service.jar

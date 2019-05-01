FROM maven:3-jdk-8 as builder

ARG APPLICATION_TYPE

WORKDIR /app
ADD ./ /app
RUN mvn package -B -P${APPLICATION_TYPE}

FROM openjdk:8-jre-alpine AS runtime
COPY --from=builder /app/target .
ENTRYPOINT ["java", "-jar", "kinesis-reader-1.0.0-SNAPSHOT.jar"]
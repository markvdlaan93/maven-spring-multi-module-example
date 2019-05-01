FROM maven:3-jdk-8 as builder

WORKDIR /app
ADD ./ /app
RUN mvn install -pl application1 -am

FROM openjdk:8-jre-alpine AS runtime
COPY --from=builder /app/application1/target .
ENTRYPOINT ["java", "-jar", "com-example-application1-1.0-exec.jar"]
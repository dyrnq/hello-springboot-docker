FROM openjdk:18-jdk-alpine
RUN addgroup -S demo && adduser -S demo -G demo
ADD target/*.jar app.jar
USER demo
ENTRYPOINT ["java","-jar","app.jar"]
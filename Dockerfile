FROM eclipse-temurin:21.0.7_6-jdk-alpine
RUN addgroup -S demo && adduser -S demo -G demo && apk add curl bash
ADD target/*.jar app.jar
USER demo
ENTRYPOINT ["java","-jar","app.jar"]
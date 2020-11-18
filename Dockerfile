# First stage: complete build environment
FROM maven:3-jdk-8 AS builder

# add pom.xml and source code
ADD ./pom.xml pom.xml
ADD ./src src/

# package jar
RUN mvn clean package

# Second stage: minimal runtime environment
From openjdk:8u222-jre-stretch

# copy jar from the first stage
COPY --from=builder target/njzy-coming-0.0.1-SNAPSHOT.jar njzy-coming-0.0.1-SNAPSHOT.jar

EXPOSE 8080

CMD ["java", "-jar", "njzy-coming-0.0.1-SNAPSHOT.jar"]
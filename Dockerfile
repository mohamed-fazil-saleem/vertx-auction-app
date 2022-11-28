FROM openjdk:20-slim-buster

RUN apt-get update && apt-get install curl sudo git -y 
RUN git clone https://github.com/mwarc/simple-realtime-auctions-vertx3-example.git
RUN cd simple-realtime-auctions-vertx3-example
CMD ["./gradlew run"]
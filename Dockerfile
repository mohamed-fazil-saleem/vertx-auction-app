FROM ubuntu:latest

RUN apt-get update && apt-get install curl sudo git -y && sudo apt-get install openjdk-8-jdk
RUN git clone https://github.com/mwarc/simple-realtime-auctions-vertx3-example.git
WORKDIR ./simple-realtime-auctions-vertx3-example
CMD ["./gradlew run"]
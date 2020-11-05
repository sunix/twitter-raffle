FROM quay.io/quarkus/centos-quarkus-maven:20.1.0-java11 as quarkus-dev
COPY --chown=1001:1001 . /twitter-raffle
WORKDIR /twitter-raffle
RUN  mvn package -Dnative -Dquarkus.native.native-image-xmx=2G

FROM registry.access.redhat.com/ubi8/ubi
COPY --from=quarkus-dev /twitter-raffle/target/twitter-raffle-1.0.0-SNAPSHOT-runner /work/application
WORKDIR /work/
RUN chmod 775 /work
EXPOSE 8080
CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]

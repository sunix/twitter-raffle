FROM quay.io/quarkus/centos-quarkus-maven:20.0.0-java8 as quarkus-dev
RUN pwd && ls
COPY --chown=1001:1001 pom.xml src resources /twitter-raffle
WORKDIR /twitter-raffle
RUN pwd && ls && env && \
    mvn package -Dnative
COPY target/*-runner application

FROM registry.access.redhat.com/ubi8/ubi
COPY --from=quarkus-dev /twitter-raffle/application /work/application
WORKDIR /work/
RUN chmod 775 /work
EXPOSE 8080
CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]

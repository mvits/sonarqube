FROM adoptopenjdk/openjdk11:alpine-nightly-slim

ENV SONAR_VERSION=7.9.3 \
    SONARQUBE_HOME=/opt/sonarqube \
    SQ_GIT_VERSION=1.12.0.2002 \
    SQ_SVN_VERSION=1.10.0.1905 \
    SQ_JAVA_VERSION=6.4.0.21609 \
    SQ_JS_VERSION=6.3.0.12149 \
    SQ_TS_VERSION=2.1.0.4362 \
    SQ_PHP_VERSION=3.3.0.5297 \
    SQ_PY_VERSION=2.9.0.6368 \
    SQ_CSHARP_VERSION=8.7.0.16728 \
    SQ_XML_VERSION=2.1.0.2440 \
    SQ_FINDSEC_VERSION=4.0.0 \
    SQ_DPCHECK_VERSION=2.0.4 \
    SQ_OIDC_VERSION=2.0.0 \
    SQ_CITY_VERSION=1.1.0 \
    # Database configuration
    # Defaults to using H2
    SONARQUBE_JDBC_USERNAME=sonar \
    SONARQUBE_JDBC_PASSWORD=sonar \
    SONARQUBE_JDBC_URL=

# Http port
EXPOSE 9000

RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube

RUN set -x \
    && apk add --no-cache gnupg unzip \
    && apk add --no-cache libressl wget vim \
    && apk add --no-cache su-exec \
    && apk add --no-cache bash \
    && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE \
    && cd /opt


COPY sonarqube.zip /opt/


RUN set -x \
    && cd /opt \
    && unzip sonarqube.zip \
    && mv sonarqube-$SONAR_VERSION sonarqube \
    && chown -R sonarqube:sonarqube sonarqube \
    && rm sonarqube.zip* \
    && rm -rf $SONARQUBE_HOME/bin/*

VOLUME "$SONARQUBE_HOME/data"

WORKDIR $SONARQUBE_HOME
COPY run.sh $SONARQUBE_HOME/bin/
RUN dos2unix $SONARQUBE_HOME/bin/run.sh && chmod +x $SONARQUBE_HOME/bin/run.sh

RUN chmod -R 777 $SONARQUBE_HOME
RUN chown -R sonarqube:sonarqube $SONARQUBE_HOME
USER sonarqube

ENTRYPOINT ["./bin/run.sh"]

FROM hivemq/hivemq-ce

LABEL "Maintainer"="Juan Pedro Diez"

#ENV MOSQUITTO_HOME /mosquitto
#ENV MOSQUITTO_CONF ${MOSQUITTO_HOME}/config

RUN rm -Rf extensions && mkdir extensions

COPY extensions/ /opt/hivemq-ce-2021.3/extensions
FROM hivemq/hivemq-ce

LABEL "Maintainer"="Juan Pedro Diez"

ENV HIVEMQ_HOME=/opt/hivemq-ce-2022.1

RUN rm -Rf extensions && mkdir extensions

COPY extensions/ ${HIVEMQ_HOME}/extensions

RUN ln -s /usr/local/hivemq/conf/credentials.xml ${HIVEMQ_HOME}/extensions/hivemq-file-rbac-extension/credentials.xml
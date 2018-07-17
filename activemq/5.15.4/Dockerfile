FROM bgbilling/jdk:10-mini

ENV ACTIVEMQ_VERSION 5.15.4
ENV ACTIVEMQ=apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_HOME /opt/activemq/current

ARG ACTIVEMQ_URL=https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz

RUN set -x \
  && mkdir -p /opt/activemq \
  && curl $ACTIVEMQ_URL -o $ACTIVEMQ-bin.tar.gz \
  && tar xzf $ACTIVEMQ-bin.tar.gz -C  /opt/activemq \
  && ln -s /opt/activemq/$ACTIVEMQ $ACTIVEMQ_HOME \
  && addgroup --system activemq && adduser --system --home $ACTIVEMQ_HOME --no-create-home --disabled-login --group activemq \
  && chown -R activemq:activemq /opt/activemq/$ACTIVEMQ \
  && chown -h activemq:activemq $ACTIVEMQ_HOME \
  && rm -rf /var/cache/apk/* \
  && rm -fr /tmp/* /var/tmp/* \
  && rm $ACTIVEMQ-bin.tar.gz


USER activemq

EXPOSE 61616 5672 8161

WORKDIR $ACTIVEMQ_HOME
CMD ["/bin/sh", "-c", "bin/activemq console"]
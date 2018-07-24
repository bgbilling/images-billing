FROM bgbilling/base-jdk:8

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
#  && chown -R activemq:activemq /opt/activemq/$ACTIVEMQ \
#  && chown -h activemq:activemq $ACTIVEMQ_HOME \
  && rm -rf /var/cache/apk/* \
  && rm -fr /tmp/* /var/tmp/* \
  && rm $ACTIVEMQ-bin.tar.gz \
  && rm $ACTIVEMQ_HOME/activemq-all-$ACTIVEMQ_VERSION.jar

WORKDIR $ACTIVEMQ_HOME

COPY activemq.xml $ACTIVEMQ_HOME/conf/

COPY entrypoint.sh /entrypoint.sh

EXPOSE 61616 5672 8161

HEALTHCHECK --start-period=3m --interval=30s --timeout=20s --retries=10 \
  CMD curl -f http://localhost:8161/ || exit 1

#ENTRYPOINT ["/bin/sh", "entrypoint.sh"]

CMD ["/bin/sh", "-c", "bin/activemq console"]
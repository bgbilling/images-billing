FROM bgbilling/my:8.0 as my

ARG WILDFLY_STANDALONE=/opt/wildfly/current/standalone

RUN set -x \
  && mkdir -p /bgbilling-docker/mybgbilling/ \
  && cp ${WILDFLY_STANDALONE}/configuration/standalone.xml /bgbilling-docker/mybgbilling// \
  && cp ${WILDFLY_STANDALONE}/deployments/MyBGBilling.war/WEB-INF/jboss-web.xml /bgbilling-docker/mybgbilling// \
  && cp ${WILDFLY_STANDALONE}/deployments/MyBGBilling.war/WEB-INF/*.groovy /bgbilling-docker/mybgbilling/


FROM bgbilling/server:8.0 as packager

RUN set -x \
  && mkdir -p /bgbilling-docker/mysql/data \
  && mkdir -p /bgbilling-docker/mysql/initdb.d \
  && mkdir -p /bgbilling-docker/activemq/data \
  && mkdir -p /bgbilling-docker/server/log \
  && mkdir -p /bgbilling-docker/server/dyn \
  && mkdir -p /bgbilling-docker/server/reports \
  && mkdir -p /bgbilling-docker/mybgbilling/log \
  && cp /opt/bgbilling/BGBillingServer/data/data.properties /bgbilling-docker/server/ \
  && cp /opt/bgbilling/BGBillingServer/data/log4j.xml /bgbilling-docker/server/

COPY mysql/my.cnf /bgbilling-docker/mysql
ADD https://raw.githubusercontent.com/bgbilling/images-billing/8.0/install/dump/user.sql /bgbilling-docker/mysql/initdb.d
ADD https://raw.githubusercontent.com/bgbilling/images-billing/8.0/install/dump/demo.sql /bgbilling-docker/mysql/initdb.d
COPY activemq /bgbilling-docker/activemq
COPY docker-stack.yml init.sh start.sh stop.sh destroy.sh /bgbilling-docker/
COPY --from=my /bgbilling-docker/mybgbilling/ /bgbilling-docker/mybgbilling/

ADD mysql/data.tar.xz /bgbilling-docker/mysql/data

FROM frameloss/empty-container

COPY --from=packager /bgbilling-docker /bgbilling-docker

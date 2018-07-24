FROM bgbilling/server:7.2 as packager

RUN set -x \
  && mkdir -p /bgbilling-docker/mysql/data \
  && mkdir -p /bgbilling-docker/mysql/initdb.d \
  && mkdir -p /bgbilling-docker/activemq/data \
  && mkdir -p /bgbilling-docker/server/data \
  && mkdir -p /bgbilling-docker/server/log \
  && cp /opt/bgbilling/BGBillingServer/data/data.properties /bgbilling-docker/server/data/ \
  && cp /opt/bgbilling/BGBillingServer/data/log4j.xml /bgbilling-docker/server/data/ \
  && cp /opt/bgbilling/BGBillingServer/.install/dump.sql /bgbilling-docker/mysql/initdb.d/

COPY mysql /bgbilling-docker/mysql
COPY activemq /bgbilling-docker/activemq


FROM frameloss/empty-container

COPY --from=packager /bgbilling-docker /bgbilling-docker
COPY docker-stack.yml init.sh /bgbilling-docker/
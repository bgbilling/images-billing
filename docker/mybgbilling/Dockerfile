FROM bgbilling/base-bgbilling:8.0 as packager

ENV MYBGBILLING_VERSION=8.0
ARG MYBGBILLING_FTP=ftp://bgbilling.ru/pub/bgbilling/$MYBGBILLING_VERSION

ENV WILDFLY_HOME=/opt/wildfly/current
ENV WILDFLY_DEPLOYMENTS=$WILDFLY_HOME/standalone/deployments

RUN set -x \
  && rm -fr /tmp/bgb-install && mkdir -p /tmp/bgb-install \
  \
  && echo "Downloading MyBGBilling.zip..." \
  && wget -nv $MYBGBILLING_FTP/MyBGBilling_${MYBGBILLING_VERSION}_*.zip -O /tmp/bgb-install/MyBGBilling.zip \
  && unzip -q /tmp/bgb-install/MyBGBilling.zip -d /tmp/bgb-install/ \
  \
  && cp /tmp/bgb-install/MyBGBilling.war/WEB-INF/defaults/*.groovy /tmp/bgb-install/MyBGBilling.war/WEB-INF/ \
  && sed -i "s@user = 'customer'@user = 'admin'@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  && sed -i "s@password = '123456'@password = 'admin'@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  && sed -i "s@127.0.0.1:8080@server:8080@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  \
  && chmod +x /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/*.sh \
  && sed -i 's@JAVA_HOME=@#JAVA_HOME=@' /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/setenv.sh \
  && sed -i 's@MYBGBILLING_HOME=@#MYBGBILLING_HOME=@' /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/setenv.sh


FROM bgbilling/base-wildfly:14

ENV MYBGBILLING_VERSION=8.0
ENV MYBGBILLING_HOME=$JBOSS_HOME/standalone/deployments/MyBGBilling.war

COPY --from=packager /tmp/bgb-install/MyBGBilling.war $MYBGBILLING_HOME
COPY --from=packager /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files $JBOSS_HOME/bin
COPY --from=packager /opt/bgbilling/BGBillingServer/script/wait-for.sh /wait-for.sh
COPY standalone.xml $JBOSS_HOME/standalone/configuration
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to all interface
CMD ["/opt/wildfly/current/bin/standalone.sh", "-b", "0.0.0.0"]

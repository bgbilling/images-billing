#!/bin/sh -eux

MYBGBILLING_VERSION=7.1
MYBGBILLING_FTP=ftp://bgbilling.ru/pub/bgbilling/$MYBGBILLING_VERSION

WILDFLY_HOME=/opt/wildfly/current
WILDFLY_DEPLOYMENTS=$WILDFLY_HOME/standalone/deployments


echo "Checking what directory /opt/wildfly/current exists" \
  && [ -d /opt/wildfly/current ] \
  && echo "Checking what directory $WILDFLY_DEPLOYMENTS/MyBGBilling.war does not exist"
  && [ ! -d $WILDFLY_DEPLOYMENTS/MyBGBilling.war ] \
  && rm -fr /tmp/bgb-install && mkdir -p /tmp/bgb-install \
  \
  && echo "Downloading MyBGBilling.zip..." \
  && wget -nv $MYBGBILLING_FTP/MyBGBilling_${MYBGBILLING_VERSION}_*.zip -O /tmp/bgb-install/MyBGBilling.zip \
  && unzip /tmp/bgb-install/MyBGBilling.zip -d /tmp/bgb-install/ \
  \
  && cp /tmp/bgb-install/MyBGBilling.war/WEB-INF/defaults/*.groovy /tmp/bgb-install/MyBGBilling.war/WEB-INF/ \
  && sed -i "s@user = 'customer'@user = 'admin'@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  && sed -i "s@password = '123456'@password = 'admin'@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  \
  && chmod +x /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/*.sh \
  && sed -i 's@JAVA_HOME=@#JAVA_HOME=@' /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/setenv.sh \
  && sed -i 's@MYBGBILLING_HOME=@#MYBGBILLING_HOME=@' /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/setenv.sh \
  \
  && systemctl start wildfly \
  && /opt/wildfly/current/bin/jboss-cli.sh --connect --commands="/socket-binding-group=standard-sockets/socket-binding=http:write-attribute(name=port,value=8085)" \
  && /opt/wildfly/current/bin/jboss-cli.sh --connect --file=/opt/wildfly/current/standalone/deployments/MyBGBilling.war/WEB-INF/defaults/configure-security-domain.cli \
  && systemctl stop wildfly \
  && mv /tmp/bgb-install/MyBGBilling.war $WILDFLY_DEPLOYMENTS/ \
  && touch $WILDFLY_DEPLOYMENTS/MyBGBilling.war.dodeployment


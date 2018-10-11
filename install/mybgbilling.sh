#!/bin/sh -eux

echo "Checking prerequisite utilities (nc,wget,unzip,sed,systemctl)"
[ -n "`which nc`" ]
[ -n "`which wget`" ]
[ -n "`which unzip`" ]
[ -n "`which sed`" ]
[ -n "`which systemctl`" ]


MYBGBILLING_VERSION=7.1
MYBGBILLING_FTP=ftp://bgbilling.ru/pub/bgbilling/$MYBGBILLING_VERSION

WILDFLY_HOME=/opt/wildfly/current
WILDFLY_DEPLOYMENTS=$WILDFLY_HOME/standalone/deployments

set -x \
  && echo "Checking what directory /opt/wildfly/current exists" \
  && [ -d /opt/wildfly/current ] \
  && echo "Checking what directory $WILDFLY_DEPLOYMENTS/MyBGBilling.war does not exist" \
  && [ ! -d $WILDFLY_DEPLOYMENTS/MyBGBilling.war ] \
  && rm -fr /tmp/bgb-install && mkdir -p /tmp/bgb-install \
  \
  && echo "Downloading MyBGBilling.zip..." \
  && wget -nv $MYBGBILLING_FTP/MyBGBilling_${MYBGBILLING_VERSION}_*.zip -O /tmp/bgb-install/MyBGBilling.zip \
  && unzip -q /tmp/bgb-install/MyBGBilling.zip -d /tmp/bgb-install/ \
  \
  && cp /tmp/bgb-install/MyBGBilling.war/WEB-INF/defaults/*.groovy /tmp/bgb-install/MyBGBilling.war/WEB-INF/ \
  && sed -i "s@user = 'customer'@user = 'admin'@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  && sed -i "s@password = '123456'@password = 'admin'@" /tmp/bgb-install/MyBGBilling.war/WEB-INF/mybgbilling-conf.groovy \
  \
  && { \
    echo '#!/bin/sh'; \
    echo; \
    echo '#JAVA_HOME='; \
    echo 'MYBGBILLING_HOME=/opt/wildfly/current/standalone/deployments/MyBGBilling.war'; \
  } >> /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/setenv.sh \
  && chmod +x /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/*.sh \
  && cp /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/*.* $WILDFLY_HOME/bin \
  \
  && echo "Starting Wildfly" \
  && systemctl start wildfly \
  && echo "Waiting for port 9990" \
  && /tmp/bgb-install/MyBGBilling.war/WEB-INF/script/files/wait-for.sh 127.0.0.1:9990 -t 120 \
  && echo "Changing HTTP port to 8085" \
  && /opt/wildfly/current/bin/jboss-cli.sh --connect --commands="/socket-binding-group=standard-sockets/socket-binding=http:write-attribute(name=port,value=\${jboss.http.port:8085})" \
  && /opt/wildfly/current/bin/jboss-cli.sh --connect --commands="/socket-binding-group=standard-sockets/socket-binding=https:write-attribute(name=port,value=\${jboss.https.port:8448})" \
  && echo "Executing configure-security-domain.cli" \
  && cp /tmp/bgb-install/MyBGBilling.war/WEB-INF/defaults/configure-security-domain.cli /tmp/bgb-install/ \
  && sed -i "s@:reload@@" /tmp/bgb-install/configure-security-domain.cli \
  && /opt/wildfly/current/bin/jboss-cli.sh --connect --file=/tmp/bgb-install/configure-security-domain.cli \
  && echo "Stopping Wildfly" \
  && systemctl stop wildfly \
  && echo "Copying MyBGBilling.war" \
  && mv /tmp/bgb-install/MyBGBilling.war $WILDFLY_DEPLOYMENTS/ \
  && touch $WILDFLY_DEPLOYMENTS/MyBGBilling.war.dodeployment


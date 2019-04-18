FROM bgbilling/base-jdk:8

ENV BGBILLING_DOCKER=yes
ENV BGBILLING_HOME=/opt/bgbilling/BGBillingServer
ENV BGBILLING_VERSION=8.0

ARG BGBILLING_FTP=ftp://bgbilling.ru/pub/bgbilling/$BGBILLING_VERSION

ARG BGBILLING_INSTALL=/opt/bgbilling/BGBillingServer/.install

ENV BGBILLING_ASSETS=card,bill,inet,tv,voice,reports,documents,cashcheck,mps,sberbank,yamoney,assist

RUN set -x \
  && [ ! -f $BGBILLING_HOME ] \
  && mkdir -p /opt/bgbilling \
  && rm -fr /tmp/bgb-install && mkdir -p /tmp/bgb-install \
  \
  && echo "Downloading BGBillingServer..." \
  && wget -nv $BGBILLING_FTP/BGBillingServer_${BGBILLING_VERSION}_*.zip -O /tmp/bgb-install/BGBillingServer-tmp.zip \
  && unzip -q /tmp/bgb-install/BGBillingServer-tmp.zip -d /tmp/bgb-install \
  && mv /tmp/bgb-install/BGBillingServer $BGBILLING_HOME \
  && rm -f $BGBILLING_HOME/*.bat && rm -f $BGBILLING_HOME/*.ini && rm -f $BGBILLING_HOME/*.exe \
  && chmod +x $BGBILLING_HOME/*.sh \
  && chmod +x $BGBILLING_HOME/script/bgcommonrc \
  && chmod +x $BGBILLING_HOME/script/wait-for.sh \
  \
  && mkdir -p $BGBILLING_INSTALL \
  && mv /tmp/bgb-install/dump.sql $BGBILLING_INSTALL \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/update_$BGBILLING_VERSION.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/alfabank_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/assist_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/bill_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/bonus_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/bvcom_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/card_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/cashcheck_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/cerbercrypt_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/cladr_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/crm_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/dba_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/dispatch_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/documents_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/drweb_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/drwebn_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/email_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/enaza_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/fias_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/gazprombank_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/gorod_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/helpdesk_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/inet_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/megogo_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/mobimoney_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/mps_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/mtsbank_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/netpay_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/npay_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/onpay_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/paykeeper_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/paylinks_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/paymaster_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/payonline_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/payture_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/psb_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/pscb_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/qiwi_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/rbkmoney_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/rentsoft_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/reports_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/rfiec_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/robokassa_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/rscm_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/rurupay_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/sberbank_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/sbpilot_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/simplepay_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/softkey_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/subscription_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/trayinfo_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/tv_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/uniteller_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/voice_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/vseplatezhi_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/wm_${BGBILLING_VERSION}_*.zip \
  && wget -q --directory $BGBILLING_INSTALL $BGBILLING_FTP/yamoney_${BGBILLING_VERSION}_*.zip \
  \
  && sed -i 's@jdbc:mysql://127.0.0.1/@jdbc:mysql://db/@' $BGBILLING_HOME/data/data.properties \
  && sed -i 's@//127.0.0.1:61616@//activemq:61616@' $BGBILLING_HOME/data/data.properties \
  && sed -i 's@JAVA_HOME=@#JAVA_HOME=@' $BGBILLING_HOME/setenv.sh \
  && sed -i 's@BGBILLING_SERVER_DIR=.@BGBILLING_SERVER_DIR='"$BGBILLING_HOME"'@' $BGBILLING_HOME/setenv.sh \
  && sed -i 's@\/usr\/local\/BGBillingServer@'"$BGBILLING_HOME"'@' $BGBILLING_HOME/script/bgcommonrc \
  && rm -fr /tmp/* /var/tmp/*

WORKDIR $BGBILLING_HOME
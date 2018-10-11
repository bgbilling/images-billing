#!/bin/sh -eux

echo "Checking prerequisite utilities (nc,wget,unzip,sed)"
[ -n "`which nc`" ]
[ -n "`which wget`" ]
[ -n "`which unzip`" ]
[ -n "`which sed`" ]


BGBILLING_VERSION=7.1
BGBILLING_FTP=ftp://bgbilling.ru/pub/bgbilling/$BGBILLING_VERSION

ACCESS_HOME=/opt/bgbilling/BGInetAccess
ACCOUNTING_HOME=/opt/bgbilling/BGInetAccounting

TMP=/tmp/bgb-install


set -x \
  && [ ! -d $ACCESS_HOME ] \
  && [ ! -d $ACCOUNTING_HOME ] \
  && mkdir -p /opt/bgbilling \
  && rm -fr $TMP && mkdir -p $TMP \
  \
  && echo "Downloading BGInetAccess..." \
  && wget -nv $BGBILLING_FTP/BGInetAccess_${BGBILLING_VERSION}_*.zip -O $TMP/BGInetAccess-tmp.zip \
  && echo "Downloading BGInetAccounting..." \
  && wget -nv $BGBILLING_FTP/BGInetAccounting_${BGBILLING_VERSION}_*.zip -O $TMP/BGInetAccounting-tmp.zip \
  && unzip -q $TMP/BGInetAccess-tmp.zip -d $TMP \
  && unzip -q $TMP/BGInetAccounting-tmp.zip -d $TMP \
  && rm -f $TMP/BGInetAccess/*.bat && rm -f $TMP/BGInetAccess/*.ini && rm -f $TMP/BGInetAccess/*.exe \
  && rm -f $TMP/BGInetAccounting/*.bat && rm -f $TMP/BGInetAccounting/*.ini && rm -f $TMP/BGInetAccounting/*.exe \
  \
  && sed -i 's@#JAVA_HOME=@JAVA_HOME=@' $TMP/BGInetAccess/setenv.sh \
  && sed -i 's@JAVA_HOME=@JAVA_HOME=/opt/java/jdk8@' $TMP/BGInetAccess/setenv.sh \
  && sed -i 's@#JAVA_HOME=@JAVA_HOME=@' $TMP/BGInetAccounting/setenv.sh \
  && sed -i 's@JAVA_HOME=@JAVA_HOME=/opt/java/jdk8@' $TMP/BGInetAccounting/setenv.sh \
  \
  && chmod +x $TMP/BGInetAccess/*.sh \
  && chmod +x $TMP/BGInetAccess/script/*.sh \
  && chmod +x $TMP/BGInetAccounting/*.sh \
  && chmod +x $TMP/BGInetAccounting/script/*.sh \
  \
  && cp $TMP/BGInetAccess/script/inet-access.service /lib/systemd/system/ \
  && cp $TMP/BGInetAccounting/script/inet-accounting.service /lib/systemd/system/ \
  \
  && mv $TMP/BGInetAccess $ACCESS_HOME \
  && mv $TMP/BGInetAccounting $ACCOUNTING_HOME \


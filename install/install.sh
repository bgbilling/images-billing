#!/bin/sh -eux

URL=https://raw.githubusercontent.com/bgbilling
VERSION=7.1


if echo "$@" | grep -Eq '\bjdk8\b'; then
  echo "Installing JDK8"
  curl -fsSL $URL/images-base/master/install/jdk-8-debian.sh -o /tmp/jdk-8-debian.sh
  sh -eux /tmp/jdk-8-debian.sh
fi


if echo "$@" | grep -Eq '\bactivemq\b'; then
  echo "Installing ActiveMQ"
  curl -fsSL $URL/images-base/master/install/activemq/5.15.5/activemq.sh -o /tmp/activemq-debian.sh
  sh -eux /tmp/activemq-debian.sh
fi


if echo "$@" | grep -Eq '\bwildfly\b'; then
  echo "Installing Wildfly"
  curl -fsSL $URL/images-base/master/install/wildfly/11.0.0/wildfly.sh -o /tmp/wildfly-debian.sh
  sh -eux /tmp/wildfly-debian.sh
fi


if echo "$@" | grep -Eq '\bbgbilling\b'; then
  echo "Installing BGBillingServer"
  curl -fsSL $URL/images-billing/${VERSION}/install/server/bgbilling.sh -o /tmp/bgbilling.sh
  sh -eux /tmp/bgbilling.sh
fi


if echo "$@" | grep -Eq '\bmy\b'; then
  echo "Installing MyBGBilling"
  curl -fsSL $URL/images-billing/${VERSION}/install/mybgbilling.sh -o /tmp/mybgbilling.sh
  sh -eux /tmp/mybgbilling.sh
fi


if echo "$@" | grep -Eq '\bnginx\b'; then
  echo "Installing Nginx"
  apt-get -q -y install nginx
  curl -fsSL $URL/images-billing/${VERSION}/install/nginx/bgbilling.local -o /etc/nginx/sites-available/bgbilling.local
  ln /etc/nginx/sites-available/bgbilling.local /etc/nginx/sites-enabled/bgbilling.local
  rm /etc/nginx/sites-enabled/default
fi
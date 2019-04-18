#!/bin/sh -eux

echo "Checking prerequisite utilities (nc,wget,curl,unzip,sed,sudo)"
[ -n "`which nc`" ]
[ -n "`which wget`" ]
[ -n "`which curl`" ]
[ -n "`which unzip`" ]
[ -n "`which sed`" ]
[ -n "`which sudo`" ]

if cat /etc/os-release | grep -Eq '\bDebian\b'; then
	
  echo "Checking prerequisite utilities (dirmngr)"
  [ -n "`which dirmngr`" ]
  
fi

VERSION=7.2
URL=https://raw.githubusercontent.com/bgbilling
URL_BASE=$URL/images-base/master/install
URL_BILLING=$URL/images-billing/${VERSION}/install


if echo "$@" | grep -Eq '\bmariadb\b'; then

  [ ! -d /var/lib/mysql ]
  
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL_BASE/mariadb/mariadb.sh -o /tmp/bgb-install-script/mariadb.sh
  sh -eux /tmp/bgb-install-script/mariadb.sh 10.2
  
elif echo "$@" | grep -Eq '\bmysql\b'; then

  [ ! -d /var/lib/mysql ]
  
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL_BASE/mysql/mysql.sh -o /tmp/bgb-install-script/mysql.sh
  sh -eux /tmp/bgb-install-script/mysql.sh
  
fi


if echo "$@" | grep -Eq '\bjdk8\b'; then

  [ ! -d /opt/java/jdk8 ]
  [ ! -f /usr/bin/java ]
  
  echo "Installing JDK8"

  if cat /etc/os-release | grep -Eq '\bDebian\b'; then

    mkdir -p /tmp/bgb-install-script
    curl -fsSL $URL_BASE/jdk-8-debian.sh -o /tmp/bgb-install-script/jdk-8-debian.sh
    sh -eux /tmp/bgb-install-script/jdk-8-debian.sh
  
  else
  
    yum -y install java-1.8.0-openjdk-devel
    mkdir -p /opt/java && ln -svT /usr/lib/jvm/java /opt/java/jdk8
    
    { \
      echo '#!/bin/sh'; \
      echo; \
      echo 'export JAVA_HOME=/opt/java/jdk8'; \
    } > /etc/profile.d/java_home.sh
    
    { \
      echo 'Defaults        env_keep +="JAVA_HOME"'; \
    } > /etc/sudoers.d/javahome
  
  fi
  
fi


if echo "$@" | grep -Eq '\bactivemq\b'; then
  echo "Installing ActiveMQ"
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL_BASE/activemq/5.15.5/activemq.sh -o /tmp/bgb-install-script/activemq.sh
  sh -eux /tmp/bgb-install-script/activemq.sh
fi


if echo "$@" | grep -Eq '\bwildfly\b'; then
  echo "Installing Wildfly"
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL_BASE/wildfly/14.0.1/wildfly.sh -o /tmp/bgb-install-script/wildfly.sh
  sh -eux /tmp/bgb-install-script/wildfly.sh
fi


if echo "$@" | grep -Eq '\bbgbilling\b'; then
  echo "Installing BGBillingServer"
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL_BILLING/bgbilling.sh -o /tmp/bgb-install-script/bgbilling.sh
  sh -ex /tmp/bgb-install-script/bgbilling.sh
fi


if echo "$@" | grep -Eq '\bmy\b'; then
  echo "Installing MyBGBilling"
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL_BILLING/mybgbilling.sh -o /tmp/bgb-install-script/mybgbilling.sh
  sh -ex /tmp/bgb-install-script/mybgbilling.sh
fi


if echo "$@" | grep -Eq '\bnginx\b'; then
  echo "Installing Nginx"
  
  [ ! -f /etc/nginx/nginx.conf ]
  
  if [ -n "`which apt-get`" ]; then apt-get update && apt-get -q -y install nginx ; else yum -y install epel-release; yum -y install nginx ; fi ;
  
  if [ -d "/etc/nginx/sites-enabled/" ]; then 
  
    curl -fsSL $URL_BILLING/nginx/bgbilling.local -o /etc/nginx/sites-available/bgbilling.local
    ln /etc/nginx/sites-available/bgbilling.local /etc/nginx/sites-enabled/bgbilling.local
    rm -f /etc/nginx/sites-enabled/default
    
  else
  
    curl -fsSL $URL_BILLING/nginx/bgbilling.local -o /etc/nginx/conf.d/bgbilling.conf
    sed -i "s@80 default_server;@80;@" /etc/nginx/nginx.conf
    
  fi
fi


if echo "$@" | grep -Eq '\binet\b'; then
  echo "Installing BGInetAccess/BGInetAccounting"
  mkdir -p /tmp/bgb-install-script
  curl -fsSL $URL/images-billing/${VERSION}/install/inet.sh -o /tmp/bgb-install-script/inet.sh
  sh -eux /tmp/bgb-install-script/inet.sh
fi


if echo "$@" | grep -Eq '\bsetlimits\b'; then
  { \
    echo 'root             soft    nofile           10000'; \
    echo 'root             hard    nofile           10000'; \
    echo 'mysql             soft    nofile           10000'; \
    echo 'mysql             hard    nofile           10000'; \
    echo 'bgbilling             soft    nofile           10000'; \
    echo 'bgbilling             hard    nofile           10000'; \
  } >> /etc/security/limits.conf

  { \
    echo 'fs.epoll.max_user_instances = 10000'; \
    echo 'fs.file-max = 70000'; \
  } >> /etc/sysctl.conf
fi
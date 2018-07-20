#!/bin/sh

echo "Set owner for $ACTIVEMQ_HOME/data"
chown -R jboss:jboss $ACTIVEMQ_HOME/data

echo "Run as jboss activemq"
exec sudo -E -u activemq "$@"
#!/bin/sh

echo "Set owner for $JBOSS_HOME/standalone"
chown -R jboss:jboss $JBOSS_HOME/standalone

echo "Run as jboss user"
exec sudo -E -u jboss "$@"
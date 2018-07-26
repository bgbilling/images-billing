#!/bin/bash

function sigterm_handler() {
    echo "SIGTERM signal received"
}

trap "sigterm_handler; exit" TERM

function entrypoint() {

    echo "entrypoint.sh"

    if [ -z "$DEPLOY_WAIT_FOR_SERVER" ]; then
      DEPLOY_WAIT_FOR_SERVER="server:8080 -t 360"
    fi

    # ожидаем старта BGBillingServer, т.к. в при deploy может происходить установка модулей
    echo "Waiting for SERVER (${DEPLOY_WAIT_FOR_SERVER})..."
    /wait-for.sh $DEPLOY_WAIT_FOR_SERVER

    $JBOSS_HOME/bin/mybgbilling-sync-libs.sh

    echo "Starting Wildfly"

    exec "$@"
}

entrypoint "$@"

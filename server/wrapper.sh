#!/bin/bash

function sigterm_handler() {
    echo "SIGTERM signal received"
    /opt/bgbilling/BGBillingServer/server_stop.sh
}

trap "sigterm_handler; exit" TERM

function entrypoint() {

    if [ -z "$DEPLOY_WAIT_FOR_MQ" ]; then
      DEPLOY_WAIT_FOR_MQ="activemq:61616 -t 180"
    fi
    
    if [ -z "$DEPLOY_WAIT_FOR_DB" ]; then
      DEPLOY_WAIT_FOR_DB="db:3306 -t 360"
    fi

    echo "wrapper.sh"
    echo "Waiting for MQ (${DEPLOY_WAIT_FOR_MQ})..."
    /opt/bgbilling/BGBillingServer/script/wait-for.sh $DEPLOY_WAIT_FOR_MQ

    echo "Waiting for DB (${DEPLOY_WAIT_FOR_DB})..."
    /opt/bgbilling/BGBillingServer/script/wait-for.sh $DEPLOY_WAIT_FOR_DB
    
    echo "Installing modules and plugins"
    /opt/bgbilling/BGBillingServer/bg_installer.sh autoinstall "${BGBILLING_ASSETS}"

    echo "Starting BGBillingServer"
    /opt/bgbilling/BGBillingServer/server.sh start
}

entrypoint

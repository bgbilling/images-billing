#!/bin/bash

function sigterm_handler() {
    echo "SIGTERM signal received"
    /opt/bgbilling/BGBillingServer/server_stop.sh
}

trap "sigterm_handler; exit" TERM

function entrypoint() {

    if [ -z "$DEPLOY_WAIT_FOR" ]; then
      DEPLOY_WAIT_FOR="db:3306 -t 180"
    fi

    echo "wrapper.sh"
    echo "Waiting for DB (${DEPLOY_WAIT_FOR})..."
    /opt/bgbilling/BGBillingServer/script/wait-for.sh $DEPLOY_WAIT_FOR

    echo "Installing modules and plugins"
    /opt/bgbilling/BGBillingServer/bg_installer.sh autoinstall "${BGBILLING_ASSETS}"

    echo "Starting BGBillingServer"
    /opt/bgbilling/BGBillingServer/server.sh start
}

entrypoint

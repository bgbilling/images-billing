#!/bin/sh

echo "Starting MySQL and ActiveMQ..."
docker service scale bgbilling_db=1 bgbilling_activemq=1

echo "Starting BGBilling applications..."
docker service scale bgbilling_server=1 bgbilling_scheduler=1 bgbilling_my=1

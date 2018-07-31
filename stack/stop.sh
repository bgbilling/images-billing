#!/bin/sh

echo "Stopping BGBilling applications..."
docker service scale bgbilling_scheduler=0 bgbilling_my=0 bgbilling_server=0

echo "Stopping MySQL and ActiveMQ..."
docker service scale bgbilling_activemq=0 bgbilling_db=0

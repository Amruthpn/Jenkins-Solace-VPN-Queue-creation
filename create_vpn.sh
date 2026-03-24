#!/bin/bash
curl -u $SOLACE_USER:$SOLACE_PASS \
  -X POST "http://$SOLACE_HOST:8080/SEMP/v2/config/msgVpns" \
  -H "Content-Type: application/json" \
  -d '{
        "msgVpnName": "kafka-test",
        "enabled": true
      }'

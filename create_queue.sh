#!/bin/bash
curl -u $SOLACE_USER:$SOLACE_PASS \
  -X POST "http://localhost:8080/SEMP/v2/config/msgVpns/kafka-test/queues" \
  -H "Content-Type: application/json" \
  -d '{
        "queueName": "jenkins-queue",
        "accessType": "exclusive",
        "permission": "consume",
        "ingressEnabled": true,
        "egressEnabled": true
      }'

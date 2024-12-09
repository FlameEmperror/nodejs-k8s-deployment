#!/bin/bash

# Slack webhook URL
WEBHOOK_URL="https://hooks.slack.com/services/YOUR/WEBHOOK/URL"

# Validate input arguments
if [ -z "$WEBHOOK_URL" ]; then
  echo "Error: WEBHOOK_URL is not set. Please configure your Slack webhook URL."
  exit 1
fi

if [ -z "$1" ]; then
  echo "Usage: $0 \"Your notification message\""
  exit 1
fi

MESSAGE="$1"

# Send the notification
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" -X POST -H 'Content-type: application/json' \
  --data "{\"text\": \"$MESSAGE\"}" "$WEBHOOK_URL")

# Check response code
if [ "$RESPONSE" -ne 200 ]; then
  echo "Error: Failed to send notification to Slack. HTTP response code: $RESPONSE"
  exit 1
fi

echo "Notification sent successfully: $MESSAGE"
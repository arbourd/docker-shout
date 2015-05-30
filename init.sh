#!/bin/bash

# Start Shout with set environment
if [ "$PRIVATE" = "true" ]; then
  /usr/bin/env shout --home /shout --port "$PORT" --private
else
  /usr/bin/env shout --home /shout --port "$PORT" --public
fi

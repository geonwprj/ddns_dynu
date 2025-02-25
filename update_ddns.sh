#!/bin/bash

# Update IP address
curl -u "$DYNU_USERNAME:$DYNU_PASSWORD" "https://api.dynu.com/nic/update?hostname=$DYNU_HOSTNAME"

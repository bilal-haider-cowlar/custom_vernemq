#!/bin/sh

set -e

echo "i am here"
whoami
start_vernemq
# echo "$cmd"

# start_vernemq && vmq-admin api-key add key=mykey && vmq-admin api-key show

# /bin/sh -c "sleep 30 ; vmq-admin api-key add key=cowlar" &
# sleep 30 ; echo "================================================================" &
# start_vernemq
# "sleep 30 ; vmq-admin api-key add key=API_KEY" &
# /usr/sbin/start_vernemq

# Start Vernemq
# exec /usr/sbin/start_vernemq start

# # Check if the API key exists
# if ! vmq-admin api-key get key=mykey > /dev/null 2>&1; then
#   # Run the custom command to add the API key
#   vmq-admin api-key add key=mykey
# fi

# # Keep the container running
# tail -f /dev/null

#!/usr/bin/env bash

# Get the IPv4 address for the specified interface
INTERFACE="enp5s0"

# Try to get the IPv4 address with different methods
IP=$(ip -4 addr show dev $INTERFACE 2>/dev/null | grep -oP '(?<=inet )\d+((\.\d+){3})' | head -n1)

if [ -z "$IP" ]; then
  # Fallback method if the first one fails
  IP=$(ip addr show dev $INTERFACE 2>/dev/null | grep -E 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | awk '{print $2}' | cut -d/ -f1 | head -n1)
  
  if [ -z "$IP" ]; then
    echo "No IPv4"
  else
    echo "$IP"
  fi
else
  echo "$IP"
fi
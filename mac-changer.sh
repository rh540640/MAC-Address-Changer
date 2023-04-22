#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root."
  exit
fi

echo "Current MAC address:"
ifconfig | grep -oE 'ether ([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

echo "Enter interface name (e.g. eth0):"
read interface

echo "Enter new MAC address (leave blank for a random one):"
read mac_address

if [ -z "$mac_address" ]; then
  echo "Generating random MAC address..."
  macchanger -r $interface
else
  echo "Setting MAC address to $mac_address..."
  macchanger -m $mac_address $interface
fi

echo "New MAC address:"
ifconfig | grep -oE 'ether ([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

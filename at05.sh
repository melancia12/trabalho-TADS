#!/bin/bash

INTERFACE="eth0"
VLAN_ID="600"
IP_ADDRESS="10.11.12.10"
NETMASK="255.255.255.0"

# Adiciona a VLAN com a tag 600 na interface
sudo ip link add link "$INTERFACE" name "$INTERFACE.$VLAN_ID" type vlan id "$VLAN_ID"

# Ativa a interface VLAN
sudo ip link set dev "$INTERFACE.$VLAN_ID" up

# Configura o endereço IP na interface VLAN
sudo ip address add "$IP_ADDRESS"/24 dev "$INTERFACE.$VLAN_ID"

echo "VLAN $VLAN_ID adicionada em $INTERFACE com IP $IP_ADDRESS/$NETMASK"

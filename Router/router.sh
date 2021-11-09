#!/bin/bash

#Konfiguráció
#Ubuntu 20.04


#forwarding engedélyezés: 
sysctl -w net.ipv4.ip_forward=1

#arp proxy engedélyezés
echo 1 >> /proc/sys/net/ipv4/conf/all/proxy_arp


#Útvonalak hozzáadása:
ip route add 10.201.0.0/24 nexthop via 10.100.0.1 nexthop via 10.100.0.2 nexthop via 10.100.0.3



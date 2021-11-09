#!/bin/bash


#INTERFACE konfigurálás

#2db interface: 
#MGMT: ezen keresztül tudunk a gépre belépni és az internetet elérni
#eth1: ezen keresztül érjük el a routert külön háló erre a célra, hogy a tesztelést ne zavarja más forgalom, imitálja hogy kivülről érkezik kérés a routeren át.

ip add eth1 10.10.0.1/18

útvonal hozzáadása a router felé
ip route add 10.201.0.0/24 nexthop via 10.10.0.1
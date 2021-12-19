#!/bin/bash

NSC=$(${kubectl} get pods -o=name | grep backend-nsc | sed 's@.*/@@')
NSE=$(${kubectl} get pods -o=name | grep sticky-fe | sed 's@.*/@@')

ipClient=$(${kubectl} exec $NSC -c be1 -- ip a | grep nsm0 | grep inet | awk '{print $2}' | sed 's/.\{3\}$//')
ipServer=$(${kubectl} exec $NSE -c fe-nsc -- ip a | grep nsm | grep inet | awk '{print $2}' | sed 's/.\{3\}$//')

ipVIP="10.201.0.1"
${kubectl} exec $NSE -c fe-nsc -- ip route add $ipVIP via $ipServer dev nsm
${kubectl} exec $NSC -c be1 -- ip route add default via $ipServer dev nsm0

#!/bin/bash

temp=0
Limit=10000
for j in {1..255}
do
        for i in {1..255}
        do
          if (($temp<$Limit));
          then
            ((temp=temp+1))
            sudo ip addr add 10.10.$j.$i/18 dev enp6s0f0

          fi
        done

done
echo "$temp"

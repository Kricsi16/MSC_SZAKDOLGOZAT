#!bin/bash

hey -c 1 -n 10 -q 1  http://10.200.0.221   közvetlen frontend
hey -c 1 -n 10 -q 1  http://172.16.232.1:30001   CNI nodeporton keresztül
hey -c 1 -n 10 -q 1  http://10.201.0.1  dummy
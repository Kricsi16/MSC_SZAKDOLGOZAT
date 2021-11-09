#!/bin/bash

ipvsadm --start-daemon=master
ipvsadm --start-daemon=backup
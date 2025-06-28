#!/bin/bash
# Set swappiness to improve memory usage

sudo sysctl vm.swappiness=1
echo 'vm.swappiness=1' | sudo tee -a /etc/sysctl.conf

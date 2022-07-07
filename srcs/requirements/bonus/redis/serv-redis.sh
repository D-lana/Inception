#!bin/sh

sysctl -w net.core.somaxconn=65535 --allow-root

sysctl vm.overcommit_memory=1 --allow-root

echo never > /sys/kernel/mm/transparent_hugepage/enabled --allow-root

redis-server --protected-mode no
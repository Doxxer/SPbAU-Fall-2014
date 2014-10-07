#!/bin/zsh
 
iptables -t nat -A PREROUTING -p tcp --dport 8081:8083 -j REDIRECT --to-ports 14000
iptables -t nat -A PREROUTING -p tcp --dport 14001 -j REDIRECT --to-ports 8084
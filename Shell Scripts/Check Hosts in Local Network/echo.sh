#!/bin/bash
#Check available host in local network
#Support Class C Network

read -p "Input Network(Like: 192.168.1.): " net
read -p "Start Host IP(Like: 1): " startHost
read -p "End Host IP(Like: 254): " endHost
for n in `seq $startHost $endHost`
do
ping -c 1 -W 1 $net$n >/dev/null
	if [ $? -eq 0 ];then
		echo -e "$net$n is \033[32m[up]\033[0m"
	else
		echo -e "$net$n is \033[31m[down]\033[0m"
	fi
done
exit 0

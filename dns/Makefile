ip:=$(shell ifconfig|grep inet|grep netmask|grep -v 127.0.0.1|sed 's/.*inet //g'|sed 's/ netmask.*//g'|head -1)
all:
	echo [${ip}]
	sed  s/hostip/${ip}/ dnsmasq.hosts.tpl > dnsmasq.hosts

#!/bin/sh

cd /etc/dhcp
cat dhcpd.conf.bak >./dhcpd.conf
cat $(PATH_TO_static_ip_file) >>./dhcpd.conf
service isc-dhcp-server restart

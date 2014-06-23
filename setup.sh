#!/bin/sh

cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak
cd
git clone https://github.com/freifunk-flensburg/statische_ip_zuordnung
line="*/10 * * * * /root/statische_ip_zuordnung/refresh_static_ip.sh"
(crontab -u root -l; echo "$line" ) | crontab -u root -
exit 0

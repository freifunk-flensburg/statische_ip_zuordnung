#!/bin/sh

# hop into correct directory to avoid cron pwd sucks
cd $(dirname $0)

git pull -q

/bin/cat /etc/dhcp/dhcpd.conf.bak >/etc/dhcp/dhcpd.conf
/bin/cat ./static_ips >>/etc/dhcp/dhcpd.conf
/etc/init.d/isc-dhcp-server restart


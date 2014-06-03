You can only run this script for isc-dhcp-server!!

Befor you can run this script you need to save your /etc/dhcp/dhcpd.conf to /etc/dhcp/dhcpd.conf.bak

you can do this by "cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak

When you´ve created the backup file than you can add a crontab for the root user like this:

*/5 * * * * $(Path_to_refresh_static_ip.sh)

= NetWork:
== All System:
  ifconfig eth0 192.168.201.13 netmask 255.255.255.0
  route add default gw 192.168.201.1 eth0

== For Gentoo:

=== Modfiy the /etc/conf.d/net:
     For DHCP
     config_eth0=( "dhcp" )

     # For static IP using CIDR notation
     config_eth0=( "192.168.0.7/24" )
     routes_eth0=( "default via 192.168.0.1" )

     # For static IP using netmask notation
     config_eth0=( "192.168.0.7 netmask 255.255.255.0" )
     routes_eth0=( "default via 192.168.0.1" )

=== Starting and stopping network scripts:
    /etc/init.d/net.eth0 start
    /etc/init.d/net.eth0 stop

=== Configuring a network interface to load at boot time:
    rc-update add net.eth0 default

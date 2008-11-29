= NetWork:
== All System:
  ifconfig eth0 192.168.201.13 netmask 255.255.255.0
  route add default gw 192.168.201.1 eth0

== Net Status:
  netstat

== For Arch:
=== /etc/rc.conf
  # DHCP:     Set your interface to "dhcp" (eth0="dhcp")
  eth0="eth0 192.168.201.12 netmask 255.255.255.0"
  INTERFACES=(eth0)

  gateway="default gw 192.168.201.1"
  ROUTES=(gateway)
=== Network Profiles:
  $ pacman -Sy core/netcfg
  # Create the profile
  /etc/network.d/
  For more examples and further options see the files in /etc/network.d/examples/*
  # To connect a profile just execute the following command as root:
  $ netcfg <profile-name>

  http://wiki.archlinux.org/index.php/Network_Profiles

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

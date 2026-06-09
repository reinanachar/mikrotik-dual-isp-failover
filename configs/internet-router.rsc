# jun/09/2026 07:25:38 by RouterOS 6.49.18
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=10.10.10.2-10.10.10.254
add name=dhcp_pool1 ranges=20.20.20.2-20.20.20.254
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=ether2 name=dhcp1
add address-pool=dhcp_pool1 disabled=no interface=ether3 name=dhcp2
/ip address
add address=10.10.10.1/24 interface=ether2 network=10.10.10.0
add address=20.20.20.1/24 interface=ether3 network=20.20.20.0
/ip dhcp-client
add disabled=no interface=ether1
/ip dhcp-server network
add address=10.10.10.0/24 gateway=10.10.10.1
add address=20.20.20.0/24 gateway=20.20.20.1
/ip firewall nat
add action=masquerade chain=srcnat
/system identity
set name=INTERNET

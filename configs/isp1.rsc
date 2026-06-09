# jun/09/2026 07:25:03 by RouterOS 6.49.18
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=172.16.16.2
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=ether2 name=dhcp1
/ip address
add address=172.16.16.1/30 interface=ether2 network=172.16.16.0
/ip dhcp-client
add disabled=no interface=ether1
/ip dhcp-server network
add address=172.16.16.0/30 gateway=172.16.16.1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
/system identity
set name=ISP1-MAIN

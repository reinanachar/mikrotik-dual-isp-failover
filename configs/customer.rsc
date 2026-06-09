# jun/09/2026 07:24:28 by RouterOS 6.49.18
# software id = 
#
#
#
/interface bridge
add name=LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.10.2-192.168.10.254
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=LAN name=dhcp1
/interface bridge port
add bridge=LAN interface=ether3
add bridge=LAN interface=ether4
add bridge=LAN interface=ether5
/ip address
add address=192.168.10.1/24 interface=LAN network=192.168.10.0
/ip dhcp-client
add disabled=no interface=ether1
add disabled=no interface=ether2
/ip dhcp-server network
add address=192.168.10.0/24 gateway=192.168.10.1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
add action=masquerade chain=srcnat out-interface=ether2
/ip route
add distance=1 gateway=8.8.8.8 target-scope=11
add distance=2 gateway=1.1.1.1 target-scope=11
add distance=1 dst-address=1.1.1.1/32 gateway=178.17.17.1 scope=10
add distance=1 dst-address=8.8.8.8/32 gateway=172.16.16.1 scope=10
/system identity
set name=CUST

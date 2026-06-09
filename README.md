# Dual ISP Failover Using MikroTik

## Overview

Designed and implemented a dual ISP failover solution using MikroTik RouterOS in GNS3.

## Objective

Provide internet redundancy for a business customer using:

- ISP1 (Primary)
- ISP2 (Backup)

## Technologies

- MikroTik RouterOS
- GNS3
- DHCP
- NAT
- Recursive Routing
- Failover

## Topology

![Topology](topology.png)

## IP Addressing Plan

| Device | Interface | IP Address |
|----------|----------|----------|
| Internet | ether2 | 10.10.10.1/24 |
| ISP1 | ether1 | 10.10.10.2/24 |
| Internet | ether3 | 20.20.20.1/24 |
| ISP2 | ether1 | 20.20.20.2/24 |
| ISP1 | ether2 | 172.16.16.1/30 |
| Customer | ether1 | 172.16.16.2/30 |
| ISP2 | ether2 | 178.17.17.1/30 |
| Customer | ether2 | 178.17.17.2/30 |

## Implementation

- Configured two simulated ISPs using MikroTik RouterOS.
- Established WAN connectivity through an Internet router connected to a NAT cloud.
- Configured DHCP services on both ISP routers.
- Implemented source NAT for internet access.
- Configured recursive routing on the customer router.
- Configured automatic failover and failback between primary and backup ISPs.

## Testing

- Verified internet connectivity through ISP1
- Simulated ISP1 failure
- Verified automatic failover to ISP2
- Verified automatic failback when ISP1 recovered

## Results

- Successful automatic failover.
- Successful automatic failback.
- No manual intervention required.

## Skills Demonstrated

- High Availability
- Network Redundancy
- Recursive Routing
- WAN Failover
- DHCP
- NAT
- MikroTik RouterOS
- GNS3 Network Simulation
- Network Troubleshooting

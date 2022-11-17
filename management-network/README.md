## Terraform vSphere Vault

This module will deploy the ground floor networking for Tenant management network. It will provide 3 networks

Each network deploys a per defined `public_subnets` and will deploy a DHCP subnet using the range of first usable to second last usable. The network gateway will be the first usable address and the DHCP server resides on last usable before broadcast.

```mermaid
graph TD
subgraph inf[Existing Infrastructure]
t0[T0 Router]
up[Upstream/Network]---t0
end
subgraph module
    ls1---t1[T1 Router]
    ls2---t1
    ls3---t1
    d1[dhcp server]---ls1[segment 1]
    d2[dhcp server]---ls2[segment 2]
    d3[dhcp server]---ls3[segment 3]
end
t1-.-t0
```
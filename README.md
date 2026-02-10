# Mini Hyperconverged Infrastructure (HCI) Lab

A local, 3-node HCI-style lab built with Vagrant and VirtualBox to explore how compute, storage, and networking can be converged on the same nodes. This repo provides a reproducible baseline cluster you can extend with software-defined storage, workloads, and hybrid connectivity.

## What You Get

- 3 Ubuntu 22.04 LTS VMs (Jammy)
- Private network for node-to-node communication
- Consistent hostnames and IPs for predictable lab work

## Architecture

- Nodes: `hci-node-1`, `hci-node-2`, `hci-node-3`
- Private network: `192.168.56.0/24`
- IPs:
  - `hci-node-1`: `192.168.56.11`
  - `hci-node-2`: `192.168.56.12`
  - `hci-node-3`: `192.168.56.13`
- VM sizing: 2 vCPU, 2 GB RAM each

## Requirements

- Vagrant
- VirtualBox
- 8 GB+ RAM available on the host
- macOS, Linux, or Windows

## Quick Start

```bash
git clone https://github.com/karandesai2005/mini-hyperconverged-infra-lab.git
cd mini-hyperconverged-infra-lab
vagrant up
```

SSH into a node:

```bash
vagrant ssh hci-node-1
```

Check connectivity (from any node):

```bash
ping -c 2 192.168.56.12
ping -c 2 192.168.56.13
```

## Repository Layout

```
.
├── Vagrantfile
├── README.md
└── scripts/
```

## Provisioning

The `Vagrantfile` runs a shell provisioner at `scripts/common.sh`. Create that file (or update it) to install storage software, container runtimes, monitoring, or configuration tools.

## Roadmap

- Add additional virtual disks per node
- Configure a software-defined storage layer
- Deploy a containerized workload
- Add monitoring and observability
- Explore hybrid connectivity (e.g., VPN to cloud)

## Troubleshooting

- If `vagrant up` fails, ensure VirtualBox is installed and the `ubuntu/jammy64` box is available.
- If networking is blocked, verify your host-only adapter settings in VirtualBox.

## License

MIT

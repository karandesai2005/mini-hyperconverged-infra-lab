```
# Mini Hyperconverged Infrastructure (HCI) Lab

This repository contains a hands-on **mini Hyperconverged Infrastructure (HCI) lab** built to understand how modern HCI platforms converge **compute, storage, and networking** on the same set of nodes.

The project is inspired by real-world enterprise HCI solutions and is designed as a **learning + showcase project** that can be shared on GitHub and LinkedIn.

---

## 🎯 Project Goals

- Build a multi-node HCI-style cluster locally
- Simulate compute, storage, and network convergence
- Implement software-defined storage
- Run workloads on converged nodes
- Extend the lab to a hybrid cloud setup using AWS

---

## 🧱 Architecture Overview

### Local Cluster
- **3 Ubuntu virtual machines**
- Provisioned using **Vagrant + VirtualBox**
- Private network for inter-node communication
- Local disks pooled using **software-defined storage**

Each node acts as:
- A compute node  
- A storage node  
- A network participant  

This mirrors the core idea of Hyperconverged Infrastructure.

### Hybrid Cloud (Planned)
- AWS EC2 instance
- Used for backup, replication, or disaster recovery
- Secure connectivity from on-prem lab to cloud

---

## 🛠️ Technology Stack

- **Vagrant** – VM orchestration
- **VirtualBox** – Virtualization provider
- **Ubuntu 22.04 LTS** – Base OS
- **GlusterFS** – Software-defined storage
- **Docker** – Application workloads
- **AWS EC2** – Hybrid cloud extension (upcoming)

---

## 📁 Repository Structure

```

mini-hyperconverged-infra-lab/
├── Vagrantfile
├── README.md
├── docs/
│   ├── architecture.md
│   └── hybrid-design.md
└── scripts/
├── setup-storage.sh
└── install-dependencies.sh

```

---

## ⚙️ Prerequisites

- Vagrant
- VirtualBox
- Git
- Minimum **8 GB RAM** on host system
- Linux / macOS / Windows host

---

## 🚀 Getting Started

### Clone the Repository
```bash
git clone https://github.com/karandesai2005/mini-hyperconverged-infra-lab.git
cd mini-hyperconverged-infra-lab
```

### Start the Cluster

```bash
vagrant up
```

### SSH into a Node

```bash
vagrant ssh hci-node-1
```

---

## 📊 Current Progress

* [x] Repository initialized
* [x] 3-node cluster provisioned
* [x] Private networking configured
* [ ] Attach and pool storage disks
* [ ] Configure GlusterFS
* [ ] Deploy workloads
* [ ] Add AWS hybrid connectivity
* [ ] Monitoring and observability

---

## 📚 What This Project Demonstrates

* Hyperconverged Infrastructure fundamentals
* Software-defined storage concepts
* Cluster networking
* Node-to-node communication
* Hybrid cloud architecture basics
* Practical infrastructure design

---

## 🔮 Future Enhancements

* Replace GlusterFS with **Ceph**
* Add **Prometheus + Grafana** monitoring
* Automate provisioning using **Ansible**
* Implement node failure and recovery testing
* CI/CD for infrastructure validation

---

## 🧠 Motivation

This project was built to reinforce theoretical knowledge of cloud and infrastructure concepts through **hands-on implementation**, and to create a practical portfolio project demonstrating real-world systems thinking.

---

## 📜 License

This project is licensed under the **MIT License**.

```
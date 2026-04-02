# 🚀 The Monitor Project - DevOps Monitoring Stack

A complete **DevOps monitoring solution** deployed on **AWS**, combining infrastructure provisioning, configuration management, containerization, and observability.

This project demonstrates how to build and manage a **production-like monitoring environment** using **Terraform, Ansible, Docker, and CI/CD pipelines**.

---

## 📌 Project Overview

The Monitor Project provides a **fully automated monitoring platform** where:

- Infrastructure is provisioned using **Terraform**
- Configuration is managed with **Ansible**
- Applications run inside **Docker containers**
- Metrics are collected and visualized using **Prometheus & Grafana**

A sample **WordPress application** is included to simulate real-world monitoring.

---

## 🎯 Problem It Solves

Modern systems require:

- Real-time visibility into infrastructure and applications
- Automated deployments and reproducible environments
- Scalable and maintainable monitoring solutions

This project demonstrates how to **design, deploy, and monitor a system using DevOps best practices**.

---

## 🏗️ Architecture

![Architecture](./images/1-architecture-diagram.png)

### 🔄 System Flow

GitHub Actions → Terraform → AWS EC2 → Ansible → Docker → Monitoring Stack → Users

### 🧱 Core Components

- **CI/CD:** GitHub Actions
- **Infrastructure:** Terraform (AWS EC2, VPC, Security Groups)
- **Configuration:** Ansible
- **Containerization:** Docker Compose
- **Application:** WordPress + MySQL
- **Monitoring:** Prometheus + Grafana
- **Reverse Proxy:** Caddy

---

## 🔧 Technology Stack

| Layer | Technology | Purpose |
|------|------------|--------|
| **CI/CD** | GitHub Actions | Automated deployment |
| **Infrastructure** | Terraform (AWS) | Provision EC2, VPC, networking |
| **Configuration** | Ansible | Server setup and automation |
| **Containerization** | Docker Compose | Run services |
| **Monitoring** | Prometheus + Grafana | Metrics & dashboards |
| **Application** | WordPress + MySQL | Sample workload |
| **Networking** | Caddy | Reverse proxy & routing |

---

## 📊 Key Achievements

- ✅ Automated infrastructure provisioning using **Terraform**
- ✅ Configured servers using **Ansible (agentless automation)**
- ✅ Deployed full monitoring stack with **Docker Compose**
- ✅ Integrated **Prometheus & Grafana** for observability
- ✅ Built CI/CD pipeline using **GitHub Actions**

---

## 📸 Screenshots

### Infrastructure

![Terraform Plan](./images/2-terraform-plan-output.png)  
![EC2 Instance](./images/5-ec2-instance-running.png)

### CI/CD Pipeline

![GitHub Actions](./images/04-github-actions-pipeline.png)

### Application

![Docker Containers](./images/6-docker-containers-active.png)  
![WordPress](./images/08-wordpress-site-live.png)

### Monitoring

![Grafana](./images/07-grafana-dashboard.png)  
![Prometheus](./images/09-prometheus-metrics.png)

### Configuration Management

![Ansible Execution](./images/10-ansible-execution.png)

---

## 🚀 Quick Start

### Prerequisites

- AWS account
- AWS CLI configured
- Terraform
- Ansible
- SSH key pair

---

### 1️⃣ Clone Repository

git clone https://github.com/donaemeka/the-monitor-devops-project.git  
cd the-monitor-devops-project

---

### 2️⃣ Provision Infrastructure

cd terraform  
terraform init  
terraform apply -auto-approve  

---

### 3️⃣ Deploy Application

export SERVER_IP=$(terraform output -raw public_ip)

ansible-playbook -i "$SERVER_IP," ansible/playbook.yml \
--private-key=~/.ssh/yourkeypair.pem -u ec2-user

---

## 🔁 CI/CD Pipeline

The pipeline automates:

- Infrastructure provisioning with Terraform
- Server configuration with Ansible
- Application deployment with Docker Compose
- Service verification and health checks

---

## 📊 Monitoring & Access

| Service | URL | Credentials |
|--------|-----|------------|
| WordPress | http://<EC2-IP>/ | Setup on first login |
| Grafana | http://<EC2-IP>:3000 | admin / admin123 |
| Prometheus | http://<EC2-IP>:9090 | None |
| Caddy Admin | http://<EC2-IP>:2019 | None |

---

## ⚠️ Challenges & Solutions

### Terraform State Management

- Problem: Local state not suitable for collaboration  
- Solution: Implemented S3 backend with encryption  

### CI/CD Reliability

- Problem: Pipeline failures due to timing issues  
- Solution: Added retries and health checks  

### Docker Permissions

- Problem: Non-root user could not run Docker  
- Solution: Added user to Docker group via Ansible  

### Service Communication

- Problem: Containers could not communicate  
- Solution: Configured Docker network and service naming  

### Security Hardening

- Problem: Excessive port exposure  
- Solution: Applied least-privilege security rules  

---

## 🎯 DevOps Skills Demonstrated

| Category | Tools | Evidence |
|----------|------|---------|
| Infrastructure as Code | Terraform | AWS provisioning |
| Configuration Management | Ansible | Automated setup |
| Containerization | Docker | Multi-service deployment |
| Monitoring | Prometheus, Grafana | Metrics dashboards |
| CI/CD | GitHub Actions | Automated pipeline |
| Cloud | AWS EC2, VPC | Production-like environment |

---

## 📈 Business Value

- Faster deployments  
- Improved system visibility  
- Better reliability  
- Scalable monitoring architecture  

---

## 🚀 Future Improvements

- HTTPS with SSL  
- Alerts and notifications  
- Multi-AZ deployment  
- Kubernetes migration  

---

## 👨‍💻 About Me

**Donatus Emeka Anyalebechi**  
Junior DevOps Engineer  

📍 Germany  
📧 donaemeka92@gmail.com  
🔗 https://www.linkedin.com/in/donatus-devops  
🐙 https://github.com/donaemeka  

---

⭐ Built to demonstrate real-world DevOps and monitoring practices
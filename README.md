# 🚀 The Monitor Project – DevOps Monitoring Stack

## Overview
A production-style monitoring solution deployed on AWS, combining infrastructure provisioning, configuration management, containerization, and observability.

This project demonstrates how to build and operate a monitoring environment using Terraform, Ansible, Docker Compose, Prometheus, Grafana, and GitHub Actions.

---

## Key Highlights

- Automated infrastructure provisioning using Terraform  
- Configured servers using Ansible (agentless automation)  
- Deployed monitoring stack with Docker Compose  
- Integrated Prometheus and Grafana for observability  
- Built CI/CD pipeline with GitHub Actions  
- Simulated real-world workload using a WordPress application  

---

## Problem It Solves

Modern systems require:

- Real-time visibility into infrastructure and services  
- Automated and repeatable deployments  
- Reliable monitoring for faster troubleshooting  
- Scalable and maintainable environments  

This project demonstrates how DevOps practices can be used to provision, configure, deploy, and monitor a system in a production-like setup.

---

## Architecture

![Architecture](./images/1-architecture-diagram.png)

---

## System Flow

GitHub Actions → Terraform → AWS EC2 → Ansible → Docker Compose → Prometheus & Grafana → Users

---

## Core Components

- CI/CD: GitHub Actions  
- Infrastructure: Terraform (AWS EC2, VPC, Security Groups)  
- Configuration: Ansible  
- Containerization: Docker Compose  
- Monitoring: Prometheus + Grafana  
- Application: WordPress + MySQL  
- Reverse Proxy: Caddy  

---

## Tech Stack

### Cloud & Infrastructure
- AWS EC2, VPC, Security Groups  
- Terraform  

### Configuration Management
- Ansible  

### Containers
- Docker  
- Docker Compose  

### Monitoring
- Prometheus  
- Grafana  

### CI/CD
- GitHub Actions  

### Application
- WordPress  
- MySQL  

---

## Key Achievements

- Provisioned AWS infrastructure automatically using Terraform  
- Configured servers using Ansible for repeatable setup  
- Deployed monitoring and application containers with Docker Compose  
- Built dashboards for system visibility using Grafana  
- Collected metrics with Prometheus  
- Automated deployment workflow with GitHub Actions  

---

## CI/CD Pipeline

The pipeline automates:

- Infrastructure provisioning  
- Server configuration  
- Application deployment  
- Service verification  

![CI/CD Pipeline](./images/04-github-actions-pipeline.png)

---

## Monitoring

The monitoring stack provides visibility into system performance and services.

![Grafana Dashboard](./images/07-grafana-dashboard.png)

---

## Sample Application (WordPress)

A WordPress application was deployed to simulate a real-world workload and validate the monitoring setup.

![WordPress](./images/08-wordpress-site-live.png)

---

## Challenges & Solutions

### Terraform State Management
Problem: Local state not suitable for collaboration  
Solution: Implemented S3 backend with encryption  

### CI/CD Reliability
Problem: Pipeline failures due to timing issues  
Solution: Added retries and health checks  

### Docker Permissions
Problem: Non-root user could not run Docker  
Solution: Added user to Docker group via Ansible  

### Service Communication
Problem: Containers could not communicate  
Solution: Configured Docker networking and service naming  

### Security Hardening
Problem: Excessive port exposure  
Solution: Applied least-privilege security rules  

---

## Business Value

- Faster and more consistent deployments  
- Improved visibility into services  
- Better system reliability  
- Reproducible infrastructure and configuration  
- Scalable monitoring architecture  

---

## Conclusion

This project demonstrates my ability to:

- Provision cloud infrastructure with Terraform  
- Configure systems using Ansible  
- Deploy containerized services with Docker  
- Build observability with Prometheus and Grafana  
- Automate workflows with GitHub Actions  
- Troubleshoot real-world system issues  

---

## Author

Donatus Emeka Anyalebechi  
DevOps & Cloud Engineer  

Germany  
donaemeka92@gmail.com  
https://www.linkedin.com/in/donatus-devops  
https://github.com/donaemeka  

---

⭐ Built to demonstrate real-world DevOps and monitoring practices
# 🚀 Blue–Green Deployment using AWS EC2 & Application Load Balancer

This project demonstrates a **Blue–Green Deployment strategy** using **AWS EC2** and an **Application Load Balancer (ALB)** with **separate target groups**.

The goal is to deploy a **new version (Green)** with additional features **without impacting** the **existing production version (Blue)** and switch traffic **100% instantly** with **zero downtime** and **easy rollback**.

---

## 📂 Repository Structure

```psql
blue_green_ec2_deployment
│
├── user_data
│   ├── blue_user_data.sh
│   └── green_user_data.sh
│
├── architecture
│   └── blue_green_alb.png
│
├── screenshots
│   ├── blue_environment.png
│   └── green_environment.png
│
└── README.md

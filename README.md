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

```

## 🟦 Blue Environment (Existing Production)

Runs Version-1 of the application

Limited features

Registered with Blue Target Group

ALB routes 100% traffic to Blue

## 🟩 Green Environment (Parallel Deployment)

Runs Version-2 with additional features

Deployed in parallel

Registered with Green Target Group

No changes made to Blue environment

## 🔁 Deployment Flow

Blue environment serves live traffic

Green environment is created and tested separately

ALB listener rule updated:

Green → 100% traffic

Blue → 0% traffic

If any issue occurs, rollback is done by switching traffic back to Blue

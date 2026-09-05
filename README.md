# Test_Expense-App
Expense-App Anatomy
Expense is a 3 tier web application used to list down our daily expenses and this is developed by using the below 3 technologies
* Frontend :    Developed by using ReactJS
* Backend  :    Developed by using NodeJS 
* DB       :    MySQL 
On a high-level here is how the architecture and the flow looks like:

<img width="1406" height="703" alt="image" src="https://github.com/user-attachments/assets/89d4bd69-d5b9-4ec6-ba7e-75dbc63587ef" />

  Once you create 3 servers using t3.micro on N.Virginia using the above image make sure you attach a security create named allow-all that allows all-inbound from 0.0.0.0/0 proceed with 001-frontend

                    EXPENSE APP
                         |
          ┌──────────────┼──────────────┐
          ↓              ↓              ↓
       ReactJS         NodeJS         MySQL
          |              |              |
        Nginx          SystemD        Database
          |              |              |
          └──────────────┼──────────────┘
                         ↓
                  Infrastructure
                         ↓
                      Terraform
                         ↓
                       Docker
                         ↓
                       CI/CD
                         ↓
                     Security
                         ↓
                   Monitoring
                         ↓
                  Backup / DR
                         ↓
                Production Ready

**Requirements are now frozen**
Application       : Expense-App
Architecture      : 3-tier
Cloud             : AWS primary
Secondary         : GCP later
Environment       : Dev + Prod
Current users     : 1–10
Current traffic   : Low
IaC               : Terraform
Source Control    : GitHub
CI/CD             : Jenkins
Containers        : Later
Kubernetes        : Later
Current DB        : MySQL
Future DB         : RDS Multi-AZ
Monitoring        : CloudWatch initially
Logging           : CloudWatch initially
HA                : Future production architecture
DR                : Future
Target availability: 99.99% future

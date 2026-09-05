1.
VPC: 
VPC Name:   expense-dev-vpc
VPC ID:     vpc-09ed3e81992fb3f8d
CIDR:       10.0.0.0/16
Region:     us-east-1
Environment: dev
========================================================================
2.
Inbound = traffic coming INTO the server.
Outbound = traffic going OUT FROM the server.
expense-dev-frontend-sg
sg-020ecbc4b50f70894
```
[ ] Terraform creates complete infrastructure
[ ] 3 EC2 instances running
[ ] SSH restricted to admin/VPN IP
[ ] Frontend accessible on HTTP 80
[ ] Backend 8080 not exposed to Internet
[ ] Frontend can communicate with backend
[ ] MySQL 3306 not exposed to Internet
[ ] Backend can communicate with MySQL
[ ] Expense can be created/read through UI
[ ] Application survives basic restart testing
[ ] Terraform can destroy environment
[ ] Terraform can recreate environment
````

 Secure-WebApp-AWS

This project deploys a secure, cloud-based web application environment using Terraform on AWS with an Application Load Balancer (ALB),and Web Application Firewall (WAF)

Structure

alb.tf -Application Load Balancer setup

attach.tf - Attaches WAF to the ALB

main.tf - VPC, subnets, NAT, IGW, security groups

outputs.tf - Terraform output variables

terraform.tfstate - Terraform state file 

terraform.tfstate.backup - State file backup

terraform.tfvars -Custom variable values

variables.tf - Input variable declarations

waf.tf - WAF ACL 

 Features

Custom VPC with public/private subnets
Created in main.tf using aws_vpc, aws_subnet, and route table resources to isolate traffic and enable secure networking.

EC2 Web Server (NGINX) behind an Application Load Balancer
An EC2 instance running NGINX was launched in the public subnet and registered with a Target Group attached to an ALB (alb.tf).

AWS WAF using managed rule setsn
Defined in waf.tf, the Web ACL uses AWS-managed rule groups and is associated with the ALB through attach.tf.

Fully managed using Infrastructure as Code (Terraform)
All AWS resources were declared, provisioned, and linked using modular .tf files and applied via Terraform CLI.


variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "AWS availability zone"
  type        = string
  default     = "us-east-2a"
}
variable "ami_id" {
  description = "AMI to use for EC2"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}


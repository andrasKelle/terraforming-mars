variable "aws_profile" {
    type    = string
    default = "default"
}

variable "aws_region" {
    type    = string
    default = "eu-west-3"
}

variable "project_name" {
    type    = string
    default = "terraforming-mars-cc-demo"
}

variable "vpc_id" {
    type    = string
    default = "vpc-452c072c"
}

variable "subnet_id_a" {
    type    = string
    default = "subnet-1981e862"
}

variable "subnet_a_cidr" {
    type    = string
    default = "172.31.16.0/20"
}

variable "subnet_b_cidr" {
    type    = string
    default = "172.31.0.0/20"
}

variable "subnet_c_cidr" {
    type    = string
    default = "172.31.32.0/20"
}

variable "rds_name" {
    type        = string
    default     = "wordpress"
}
variable "rds_username" {
    type        = string
    default     = "admin"
    sensitive   = true
}

variable "rds_password" {
    type        = string
    default     = "adminadmin"
    sensitive   = true 
}
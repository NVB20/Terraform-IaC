variable "region" {
  default = "us-east-1"
}

#ec2
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
  default = "ami-0e449927258d45bc4"
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
  default     = "t2.micro"
}

#vpc
variable "availability_zone_public" {
  description = "The Availability Zone for the public Instance"
  type = string
  default = "us-east-1a"
}

variable "availability_zone_private" {
  description = "The Availability Zone for the private Instance"
  type = string
  default = "us-east-1b"
}

#cidr blocks
variable "public_cidr_block" {
  description = "The CIDR Block for the public Instance"
  type = string
  default = "10.0.1.0/24"
}
variable "private_cidr_block" {
  description = "The CIDR Block for the private Instance"
  type = string
  default = "10.0.2.0/24"
}
variable "main_vpc_cidr_block" {
  description = "The CIDR Block for the main vpc"
  type = string
  default = "10.0.0.0/16"
}
variable "route_table_cidr_block" {
  description = "The CIDR Block for the route table"
  type = string
  default = "0.0.0.0/0"
}
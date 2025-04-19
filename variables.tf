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
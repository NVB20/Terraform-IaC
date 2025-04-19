variable "region" {
  default = "us-east-1"
}

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
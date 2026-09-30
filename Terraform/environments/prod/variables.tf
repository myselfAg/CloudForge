# ec2 variables
variable "ami_id" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}


# vpc variables
variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}
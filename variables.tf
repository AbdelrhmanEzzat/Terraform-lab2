variable "cidr" {
  type = string
  #   default     = "10.5.0.0/16"
  description = "this is cidr block for vpc"
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "sub_pub" {
  type = list(any)
}

variable "azs56" {
  type = list(any)
}

variable "sub_priv" {
  type = list(any)
}


variable "region" {
  type = string
}


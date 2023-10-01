variable "cidr" {
  type = string
  #   default     = "10.5.0.0/16"
  description = "this is cidr block for vpc"
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



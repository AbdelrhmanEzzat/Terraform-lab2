module "network" {
  
  source = "./network"
  cidr = var.cidr
  sub_pub = var.sub_pub
  sub_priv = var.sub_priv
  azs56 = var.azs56
}


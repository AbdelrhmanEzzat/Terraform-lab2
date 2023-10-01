resource "aws_security_group" "my_secg_bastion" {

    name = "my_secg_bastion"
    vpc_id = module.network.vpc_id

    tags = {
      Name = "my_secg_bastion"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
    
}


resource "aws_security_group" "my_secg_application" {
  name        = "ssh-and-port-3000-from-vpc"
    vpc_id = module.network.vpc_id


  tags = {
      Name = "my_secg_application"
    }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
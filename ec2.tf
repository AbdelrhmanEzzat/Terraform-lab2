# Create the EC2 instances
resource "aws_instance" "bastion" {
  ami           = var.ami_id  # Replace with the desired AMI ID
  instance_type = var.instance_type
  
  subnet_id     = module.network.pub_subnets[1].id
  vpc_security_group_ids = [aws_security_group.my_secg_bastion.id]
  key_name = aws_key_pair.tf-key-pair.id

  provisioner "local-exec" {

    command = "echo ${self.public_ip} > inventory"
    
  }
   
   user_data = <<-EOF
    #!/bin/bash
    echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/private-key.pem
    chmod 400 /home/ec2-user/private-key.pem
    EOF

  tags = {
    Name = "bastion"
  }
}



resource "aws_instance" "application" {
  ami           = var.ami_id  # Replace with the desired AMI ID
  instance_type = var.instance_type

  subnet_id     = module.network.priv_subnets[1].id
  vpc_security_group_ids = [aws_security_group.my_secg_application.id]
  key_name = aws_key_pair.tf-key-pair.id

  tags = {
    Name = "application"
  }
}
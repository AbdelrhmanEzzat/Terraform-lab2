#generate pub and private 
resource "tls_private_key" "rsa-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#create aws key pair by public key 
resource "aws_key_pair" "tf-key-pair" {
  key_name   = "tf-key-pair"
  public_key = tls_private_key.rsa-key.public_key_openssh
}

#store private key into my machine to ssh 
resource "local_file" "tf-key" {
  content  = tls_private_key.rsa-key.private_key_pem
  filename = "tf-key-pair.pem"
}


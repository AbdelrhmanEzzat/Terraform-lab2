terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-a-iti-l2"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "default"
    dynamodb_table = "state-Lock"
  }
}

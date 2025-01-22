terraform {
  backend "s3" {
    bucket         = "879381271270-terraform-state-bucket"
    key            = "bff-gateway/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-state-bkt-02032025"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}
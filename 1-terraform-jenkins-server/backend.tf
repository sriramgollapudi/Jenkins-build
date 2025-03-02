terraform {
  # backend "s3" {
  #   bucket = "terraform-state-bkt-03022025"
  #   region = "us-east-1"
  #   key = "jenkins-server/terraform.tfstate"
  # }
  backend "local"{
  }
}
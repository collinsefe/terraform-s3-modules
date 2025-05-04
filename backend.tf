terraform {
  backend "s3" {
    bucket = "terraform-tfstate-bucket-01122024"
    key    = "modules/terraform.tfstate"
    region = "eu-west-2"
  }
}

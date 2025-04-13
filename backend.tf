terraform {
  backend "s3" {
    bucket = "aft-corighose-tfstate"
    key    = "modules/terraform.tfstate"
    region = "eu-west-2"
  }
}

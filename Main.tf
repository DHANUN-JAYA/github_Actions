terraform {
  required_version = ">= 0.12.24"
#  backend "s3" {
#    bucket = "cloudquickpocsbackendtf"
#    key="quickpocsbackendtf.tfstates"
#    region = "us-east-1"
#  }
}
provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 backend "s3" {
    bucket = "bucket-states1"
    key = "kubernetes/kubernetes.tstates"
    encrypt = true
    region = "us-east-1"
    shared_credentials_files = ["C:/Users/Isaura/.aws/credentials"]
    profile = "itm"
    dynamondb_table = "tstates"
    }
}
provider "aws" {
    shared_config_files = ["C:/Users/Isaura/.aws/config"]
    shared_credentials_files = ["C:/Users/Isaura/.aws/credentials"]
    profile = "itm"
    region = "us-east-1"
}
ISAA
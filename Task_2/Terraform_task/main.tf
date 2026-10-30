terraform {
required_version = ">= 1.5.0"
required_providers{
    aws= {
        source="hashicorp/aws"
        version="~> 6.0"
    }
}

backend "s3" {
    bucket="amz-remote-state-bkt"
    key="Task_2/Terrafrom_task/terraform.tfstate"
    region = "eu-north-1"
}

}

locals {
  
   bucket_name="my-org:foo"

}


resource "aws_s3_bucket" "Bucket_storage" {
    bucket=local.bucket_name

    tags={
        project="cicd-project"
}

}


provider "aws" {
    region= "eu-north-1"
}



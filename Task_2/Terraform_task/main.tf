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
    region = "china"
}


}
resource "aws_s3_bucket" "remote_state_storage" {
    bucket="amz-remote-state-bkt"

    tags={
        project="cicd-project"
}

}


provider "aws" {
    region= "eu-north-1"
}



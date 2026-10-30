terraform {
#required_version = ">= 1.5.0"
required_providers{
    aws= {
        source="hashicorp/aws"
        version="~> 6.0"
    }
}

backend "s3" {
    bucket="amz-remote-state-bkt"
    key="Task_2/Terrafrom_task/terraform.tfstate"
}


}
resource "aws_s3_bucket" "remote_state_storage" {
    bucket="amz-remote-state-bkt"

    ags={
        project="cicd-project"
}

}


provider "aws" {
    region= "eu-north-1"
}


# make vpc, s3 bucket one for remote state mangement 
terraform {
required_providers{
    aws= {
        source="hashicorp/aws"
        version="~> 6.0"
    }
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


# make vpc, s3 bucket one for remote state mangement 
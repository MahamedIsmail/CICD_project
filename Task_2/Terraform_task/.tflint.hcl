
plugin "aws" {   
    enabled = true
    version = "0.50.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule "aws_s3_bucket_name" {
  enabled = true
  regex = "^[a-z\\-]+$"
  prefix = "my-org:"
}
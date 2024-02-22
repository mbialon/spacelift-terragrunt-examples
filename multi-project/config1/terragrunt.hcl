terraform {
  source = "./"
}

inputs = {}

remote_state {
  backend = "s3"
  config = {
    bucket                 = "terragrunt-spacelift-state-mb"
    key                    = "config1/terraform.tfstate"
    region                 = "eu-west-1"
    encrypt                = true
    dynamodb_table         = "spacelift-terragrunt-dynamodb-mb"
    skip_bucket_versioning = true
  }
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-732203471303"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

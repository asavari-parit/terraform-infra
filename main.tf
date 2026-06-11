provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"

  vpc_name    = "learning-vpc"
  subnet_name = "public-subnet"
}

module "ec2" {
  source = "./modules/ec2"

  ami_id        = "ami-0db56f446d44f2f09"
  instance_type = "t2.micro"

  subnet_id = module.vpc.subnet_id
  vpc_id    = module.vpc.vpc_id
}

module "s3" {
  source = "./modules/s3"

  bucket_name = "bucket_name = "terraform-lab-732203471303"
}

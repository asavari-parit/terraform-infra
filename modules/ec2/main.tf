module "ec2" {
  source = "./modules/ec2"

  ami_id        = "ami-xxxxxxxx"
  instance_type = "t2.micro"

  subnet_id = module.vpc.subnet_id
  vpc_id    = module.vpc.vpc_id
}

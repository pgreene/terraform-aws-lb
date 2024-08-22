# terraform-aws-lb
Terraform Module for creating AWS Load Balancer

## Usage Example

`main.tf #contents`

```bash
locals {
  vpc_id = data.aws_vpc.vpc.id
  region = "us-east-1"
}

module "aws_nlb" {
  source = "git@github.com:pgreene/terraform-aws-lb.git"
  // LB Subnets can be public or private, depending on the use case
  //subnets = ["subnet-1234567","subnet-12345667"]
  // subnets = data.aws_subnet_ids.public_subnets.ids
  subnets = data.aws_subnet_ids.private_subnets.ids
}
```

## Notes

This module can be used to create a network or application load balancer
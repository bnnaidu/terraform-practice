resource "aws_vpc" "main" {

  # The CIDR block for VPC
  cidr_block = "192.168.0.0/16"

  # Makes your instances shared on the host
  instance_tenancy = "default"

  # Enable dns for EKS. enable/disable dns support in the  vpc
  enable_dns_support = true

  # Enable dns for EKS. enable/disable dns hostnames in the vpc
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }

}

output "vpc_id" {

  description = "vpc id"
  value       = aws_vpc.main.id

  sensitive = false
}

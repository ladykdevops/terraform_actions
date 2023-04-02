#VPC Output values

#VPC ID
output "vpc_id" {
    description = "The ID of the VPC"
    value       = module.vpc.vpc_id
}

#VPC CIDR blocks
output "vpc_cidr_block" {
    description = "The CIDR block of the VPC"
    value       = module.vpc.vpc_cidr_block
}

#VPC Private Subnets
output "private_subnets" {
    description = "The list of IDs of private_subnets"
    value       = module.vpc.private_subnets
}

#VPC Public Subnets
output "public_subnets" {
    description = "The list of IDs of public_subnets"
    value       = module.vpc.public_subnets
}

#VPC NAT Gateway public IP
output "nat_public_ips" {
    description = "The list of public EIPs"
    value       = module.vpc.nat_public_ips
}

#VPC AZs
output "azs" {
    description = "The list of AZs specified as arguments"
    value       = module.vpc.azs
}
#vpc name
variable "vpc_name" {
    description = "VPC Name"
    type = string
    default = "myvpc"
}

#vpc cidr block
variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.0.0.0/16"
}

#VPC Availability zones
variable "vpc_availability_zones" {
    description = "VPC availability zones"
    type = list(string)
    default = ["us-east-2a", "us-east-2b"]
}

#VPC Public subnets
variable "vpc_public_subnets" {
    description = "VPC public subnet"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]
}

#VPC Private subnets
variable "vpc_private_subnets" {
    description = "VPC private subnet"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}
#Enable NAT gateway
variable "vpc_enable_nat_gateway" {
    description = "Enable NAT gateway for private subnet communication"
    type = bool
    default = true
}

#single_nat_gateway
variable "vpc_single_nat_gateway" {
    description = "Enable only single_nat_gateway to save cost"
    type = bool
    default = true
}

#VPC database subnets
variable "vpc_database_subnets" {
    description = "VPC database subnet"
    type = list(string)
    default = ["10.0.151.0/24", "10.0.152.0/24"]
}

#create_database_subnet_route_table
variable "vpc_create_database_subnet_route_table" {
    description = "create_database_subnet_route_table for private subnet communication"
    type = bool
    default = true
}

# create_database_subnet_group
variable "vpc_create_database_subnet_group" {
    description = "create_database_subnet_group"
    type = bool
    default = true
}

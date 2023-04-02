variable "aws_region" {
    description = "Region in which AWS Resource is created"
    type = string 
    default = "us-east-2"
}

#Environment variables
variable "environment" {
    description = "Environment variable used as prefix"
    type = string
    default = "dev"
}

#business division
variable "business_division" {
    description = "Business division in the large organization this infrastructure belongs"
    type = string
    default = "Finance"
}
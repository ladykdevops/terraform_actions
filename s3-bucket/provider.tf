# Configure the AWS Provider
#Provider Block
provider "aws" {
    region = var.myregion
    profile = "default"
}

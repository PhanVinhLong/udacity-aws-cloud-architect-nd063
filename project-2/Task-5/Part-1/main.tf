# Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"
    profile = "default"
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    subnet_id = "subnet-0cf5173fdf05dcfe7" # existing subnet
    count = 4
    tags = {
        name = "Udacity T2"
        project = "Udacity Project 2"
        author = "Long Phan"
    }
}

# provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "m4.large"
    subnet_id = "subnet-0cf5173fdf05dcfe7" # existing subnet
    count = 2
    tags = {
        name = "Udacity M4"
        project = "Udacity Project 2"
        author = "Long Phan"
    }
} 
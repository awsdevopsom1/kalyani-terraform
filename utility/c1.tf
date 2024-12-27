provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

data "aws_ec2_instance_type_offerings" "my_instance" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    values = ["us-east-1a"]
  }

  location_type = "availability-zone"
}

output "output_v1_1" {
  value = data.aws_ec2_instance_type_offerings.my_instance.instance_types
}

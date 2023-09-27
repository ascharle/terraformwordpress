resource "aws_subnet" "subnet_2" {
  vpc_id                  = "vpc-0dcc725a5d66f9535"  # Replace with your VPC ID
  cidr_block              = "172.31.96.0/20"            # Ensure this CIDR block doesn't overlap with your existing subnet
  availability_zone       = "us-east-1e"             # Replace with an AZ different from your first subnet
  map_public_ip_on_launch = true                     # If you want instances to receive a public IP

  tags = {
    Name = "MySecondSubnet"
  }
}

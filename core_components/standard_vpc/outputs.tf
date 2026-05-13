# Standard outputs for the standard_vpc template.
# Released under Apache License 2.0; see LICENSE.

output "vpc" {
  description = "The VPC resource object for consumers that need the full VPC attributes."
  value       = aws_vpc.main
}

output "vpc_id" {
  description = "The ID of the VPC. Useful for simple references."
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "The full public subnet resource objects."
  value       = aws_subnet.public
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets. Useful for routing or attachment references."
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "The full private subnet resource objects."
  value       = aws_subnet.private
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets. Useful for routing or attachment references."
  value       = aws_subnet.private[*].id
}

output "nat_gateway" {
  description = "The NAT Gateway resource object for consumers that need its full attributes."
  value       = aws_nat_gateway.nat
}

output "nat_gateway_public_ip" {
  description = "The public IP address of the NAT Gateway."
  value       = aws_eip.nat_eip.public_ip
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC."
  value       = aws_vpc.main.cidr_block
}

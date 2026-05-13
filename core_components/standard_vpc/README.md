# standard_vpc

A reusable Terraform template for creating a standard AWS VPC.

## What it provides

This template creates:

- An AWS VPC with DNS support enabled
- An Internet Gateway
- Multiple public subnets
- Multiple private subnets
- A NAT Gateway backed by an Elastic IP
- A public route table with internet access
- A private route table with NAT routing
- Route table associations for all public and private subnets

## Variables

The module uses the following configurable variables:

- `TFC_WORKSPACE_SLUG`: Terraform Cloud workspace slug
- `region`: AWS region (default `us-east-1`)
- `project_name`: Project name used for tagging (default `boilerplate-vpc`)
- `vpc_cidr`: Main VPC CIDR block (default `10.0.0.0/16`)
- `public_subnet_cidrs`: List of public subnet CIDRs
- `private_subnet_cidrs`: List of private subnet CIDRs
- `azs`: List of AWS availability zones for subnet placement

## Outputs

The template exports:

- `vpc_id`
- `public_subnet_ids`
- `private_subnet_ids`
- `nat_gateway_public_ip`
- `vpc_cidr_block`

## Usage

Use this directory as a standalone Terraform root module if you want a ready-made VPC architecture pattern.

Example:

```bash
cd core_components/standard_vpc
terraform init
terraform apply
```

Adjust variable values in `terraform.tfvars` or via CLI flags as needed.

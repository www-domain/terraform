###VPC###
environment = "stage"

common_tags = {
  "Owner" = "Thomas"
  "Project" = "Terraform VPC"
  "Environment" = "Stage"
}
tf_state_bucket = "my-terraform-state-bckt"

enable_dns_support          = true
enable_dns_hostnames        = true
vpc_name                    = "stage-cfs-vpc"
vpc_cidr                    = "10.122.0.0/16"

###IGW###
internet_gateway_name       = "stage-cfs-igw"

###NGW###
total_nat_gateway_required  = 3
eip_for_nat_gateway_name    = "stage-cfs-eip"
nat_gateway_name            = "stage-cfs-ngw"

public_subnets = {
  cidrs_blocks         = ["10.122.1.0/24", "10.122.2.0/24"]
  map_public_ip_on_launch = true
  route_table_name     = "public-route-table"
  subnets_name_prefix  = "public-subnet"
  routes              = []
}


private_subnets = {
  cidrs_blocks         = ["10.122.10.0/24", "10.122.20.0/24"]
  route_table_name     = "private-route-table"
  subnets_name_prefix  = "private-subnet"
  routes              = []
}

output "subnetID_1a" {
  value = element(module.vpc.public_subnets, 0)
}

output "subnetID_1b" {
  value = element(module.vpc.public_subnets, 1)
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

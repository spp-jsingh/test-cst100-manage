output "security-group" {
  value = module.jumpbox_security_group
}

#output "vpc-splunk" {
#value = module.vpc
#}

output "eip_id" {
  value = module.vpc
}

output "public_ip" {
  value = module.jumpbox.public_ip
}

output "private_ip" {
  value = module.jumpbox.private_ip
}

output "nat_public_ips" {
  value = module.vpc
}
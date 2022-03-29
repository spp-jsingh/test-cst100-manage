output "security-group" {
  value = ["${module.jumpbox_security_group}", "${module.ansible_security_group}"]
}

#output "vpc-splunk" {
#value = module.vpc
#}

output "public_ip" {
  value = ["${module.jumpbox.public_ip}", "${module.ansible.public_ip}"]
}

output "private_ip" {
  value = ["${module.jumpbox.public_ip}", "${module.ansible.public_ip}"]
}

output "nat_public_ips" {
  value = module.vpc
}
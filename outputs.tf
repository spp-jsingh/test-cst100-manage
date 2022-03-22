output "security-group" {
  value = ["$${module.*_security_group}"]
}

output "vpc-splunk" {
  value = module.vpc
}

output "ec2-instance" {
  value = ["$${module.*_ec2_instance}"]
}

output "public_ip" {
  value = ["$${module.*_ec2_instance.public_ip}"]
}

output "private_ip" {
  value = ["$${module.*_ec2_instance.private_ip}"]
}

# cst-splunk-standalone
standalone AWS EC2 splunk in terraform

This Terraform code, when deployed to an AWS account, will create the following resources:

- Standalone VPC with provided CIDR
- Two Public Subnets in AZA and AZC
- Internet Gateway attached to VPC
- t3.medium instance deployed in either public subnet
  - EIP attached to network interface
  - Ubuntu 20.04 LTS (updated)
  - ssh keys for one user with sudo access
  - OS volume to be 20GB
  - Additional EBS volume of 100GB attached to /opt/splunk and formatted for use
- security group to only allow access to the EIP attached to SPP management network (to be given)

To be done outside of terraform:
- install splunk in /opt/splunk
- configure splunk for deployment and license server
- configure tls on interface
- configure management interface for port 443 instead of 8000 or 8443


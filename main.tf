resource "aws_vpc" "VPCITMkubernetes" {
    cidr_block = "198.168.8.0/24"
    instance_tenancy = "default"
    tags = {
      Name = "ITMLab_Virutal"
    }
  
}
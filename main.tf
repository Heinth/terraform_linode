terraform {
  required_providers {
      linode = {
            source = "linode/linode"
	          version = "2.5.2"
		      }
		        }
			}


provider "linode" {
  token = "3a79182c51ac78e93c33ead2e03b5aee23658dae8c3e6317fbcc851c176d4a16"
}

resource "linode_instance" "my_instance" {
  label = "rancher"
  region = "ap-south"  # Singapore region
  image  = "linode/ubuntu20.04"
  type   = "g6-dedicated-2"  # Dedicated 4 GB plan
  root_pass = "yemonhe!n99H"
}

output "server_ip" {
  value = linode_instance.my_instance.ip_address
}

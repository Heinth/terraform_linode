terraform {
  required_providers {
      linode = {
            source = "linode/linode"
	          version = "2.5.2"
		      }
		        }
			}


provider "linode" {
  token = "a20668c698fbbd0de8b78fce3cdafd7f405a34fa234e7add538182ef3a21e8e0"
}

resource "linode_instance" "my_instance" {
  label = "test-server"
  region = "ap-south"  # Singapore region
  image  = "linode/ubuntu20.04"
  type   = "g6-dedicated-2"  # Dedicated 4 GB plan
  root_pass = "yemonhe!n99H"
}

output "server_ip" {
  value = linode_instance.my_instance.ip_address
}

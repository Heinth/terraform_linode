terraform {
  required_providers {
      linode = {
            source = "linode/linode"
	          version = "2.5.2"
		      }
		        }
			}


provider "linode" {
  token = "$LINODE_TOKEN"
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

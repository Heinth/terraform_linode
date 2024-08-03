provider "linode" {
  token = var.linode_token
}

resource "linode_instance" "my_instance" {
  label = "example-instance"
  region = "ap-south"  # Singapore region
  image  = "linode/ubuntu20.04"
  type   = "g6-dedicated-2"  # Dedicated 4 GB plan
  root_pass = "your-root-password"
}

output "server_ip" {
  value = linode_instance.my_instance.ip_address
}

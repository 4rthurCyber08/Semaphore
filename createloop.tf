terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
    }
  }
}

provider "iosxe" {
  username = "admin"
  password = "C1sc0123"
  url      = "https://10.11.1.4"
}

resource "iosxe_interface_loopback" "example" {
  name               = 150
  description        = "My First TF Script Attempt"
  shutdown           = false
  ipv4_address       = "5.5.5.5"
  ipv4_address_mask  = "255.255.255.255"
}

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "" # Token
}

data "digitalocean_ssh_key" "key" {
  name = "development" # Change SSH key Name
}

resource "digitalocean_droplet" "web" {
  count      = 1  # Change the number of Droplets to create
  name       = "test-${count.index + 1}"  # Incremental name based on index
  region     = "sgp1"
  size       = "s-1vcpu-1gb"
  image      = "ubuntu-20-04-x64"
  backups    = false
  ipv6       = false
  monitoring = false
  tags       = ["web"]
  ssh_keys   = [data.digitalocean_ssh_key.key.id]
  user_data  = file("userdata.yaml")
  vpc_uuid = "66a9a644-3a92-4f04-93b2-874f1f13cc33"
}

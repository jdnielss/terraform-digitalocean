output "droplet_ips" {
  value = { for droplet in digitalocean_droplet.web : droplet.name => droplet.ipv4_address }
}
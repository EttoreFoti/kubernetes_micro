provider "hcloud" {
  token = var.hcloud_token
}

data "hcloud_ssh_key" "ssh_key" {
  name = var.ssh_key
}

resource "hcloud_server" "web" {
  count       = var.server_count
  image       = var.image
  server_type = var.server_type
  location    = var.location
  name        = format("%s-%03d", var.server_name, count.index + 1)
  ssh_keys    = [data.hcloud_ssh_key.ssh_key.id]
}

resource "hcloud_load_balancer" "load_balancer" {
  name               = "my-load-balancer"
  load_balancer_type = "lb11"
  location           = var.location
}

resource "hcloud_network" "private-subnet" {
  name     = "my-net"
  ip_range = "10.0.0.0/16"
}

resource "hcloud_load_balancer_network" "srvnetwork" {
  load_balancer_id = hcloud_load_balancer.load_balancer.id
  network_id       = hcloud_network.private-subnet.id
  ip               = "10.0.1.2"
}

resource "hcloud_load_balancer_service" "load_balancer_service" {
    load_balancer_id = hcloud_load_balancer.load_balancer.id
    protocol         = "https"
    listen_port    = 443
    destination_port = 8080
}

resource "hcloud_load_balancer_target" "load_balancer_target" {
  count            = var.server_count
  type             = "server"
  load_balancer_id = hcloud_load_balancer.load_balancer.id
  server_id        = hcloud_server.web[count.index].id
}

resource "null_resource" "makeConnection" {
  connection {
    user        = "root"
    host        = hcloud_server.web[count.index].ipv4_address
    private_key = file(var.hcloud_ssh_key_local_path)
  }
}

output "ip" {
  value = join(",", hcloud_server.web.*.ipv4_address)
}

output "Done" {
  value = "\n If ansible did not have printed any errors, then all nodes are provisioned successfully :-)\nDo not forget to delete variables.tf, since it contains sensitive information!"
}

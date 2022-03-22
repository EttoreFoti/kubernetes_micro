// Define your Hetzner Cloud Api Token
variable "hcloud_token" {
    type = string
    default = "LK5TuDjeGLnusmGtimegw7AbQQ25ndl3xfAoUdWggNWz55YCrxTeYhcTFUShLdzc"
}
// Define your Hetzner SSH Key Name
variable "ssh_key" {
    type = string
    default = "id_rsa_hertz"
}
// SSH root user key file path
variable "hcloud_ssh_key_local_path" {
    type = string
    default = "~/.ssh/id_rsa_hertz"
}
// Number of nodes you want to provision
variable "server_count" {
    type = string
    default = "3"
}
// Host Name / Host Name Prefix
variable "server_name" {
    type = string
    default = "dockerNodes"
}
// Root user password
variable "root_password" {
    type = string
    default = "Pallacanestro!9"
}
// SSH user username
variable "ssh_user_username" {
    type = string
    default = "ettorefoti"
}
// SSH user password
variable "ssh_user_password" {
    type = string
    default = "Pallacanestro!9"
}
// SSH user keyfile path
variable "ssh_user_keyfile_path" {
    type = string
    default = "~/.ssh/id_rsa.pub"
}
// SSH port
variable "ssh_port" {
    type = string
    default = "22"
}
// VM Location
variable "location" {
    type = string
    default = "nbg1"
}
// VM Size
variable "server_type" {
    type = string
    default = "cx11"
}
// VM Image
variable "image" {
    type = string
    default = "ubuntu-20.04"
}
// Docker Version
variable "docker_version" {
    type = string
    default = "20.10.12-3"
}
// Define your Hetzner Cloud Api Token
 variable "hcloud_token" {
     type = string
     default = ""
 }
 // Define your Hetzner SSH Key Name
 variable "ssh_key" {
     type = string
     default = ""
 }
 // SSH root user key file path
 variable "hcloud_ssh_key_local_path" {
     type = string
     default = ""
 }
 // Number of nodes you want to provision
 variable "server_count" {
     type = string
     default = "3"
 }
 // Host Name / Host Name Prefix
 variable "server_name" {
     type = string
     default = "k8s"
 }
 // Root user password
 variable "root_password" {
     type = string
     default = ""
 }
 // SSH user username
 variable "ssh_user_username" {
     type = string
     default = ""
 }
 // SSH user password
 variable "ssh_user_password" {
     type = string
     default = ""
 }
 // SSH user keyfile path
 variable "ssh_user_keyfile_path" {
     type = string
     default = "~"
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

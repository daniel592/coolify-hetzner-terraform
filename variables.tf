variable "hcloud_token" {
  type = string
  description = "Hetzner Cloud API token"
  sensitive = true
}

variable "location" {
  type = string
  description = "Location to create the server's in"
}

variable "instances" {
  type = string
  description = "Number of instances to create"
}

variable "server_type" {
  type = string
  description = "Server type to use for the server"
}

variable "os_type" {
  type = string
  description = "OS image to use for the server"
}
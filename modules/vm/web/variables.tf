# Web Server Variables
variable "web_vm_box" {
  description = "The Vagrant box for the web server"
  type        = string
  default     = "ubuntu/bionic64"
}

variable "web_vm_name" {
  description = "The name of the web server VM"
  type        = string
  default     = "web-server"
}

variable "web_vm_hostname" {
  description = "The hostname of the web server"
  type        = string
  default     = "web-server.local"
}

variable "web_network" {
  description = "The network type of web server"
  type        = string
  default     = "private_network"
}

variable "web_ip" {
  description = "Private IP address of the web server"
  type        = string
  default     = "192.168.56.10"
}

variable "web_vm_memory" {
  description = "Memory allocation for the web server VM"
  type        = number
  default     = 1024
}

variable "web_vm_cpus" {
  description = "CPU allocation for the web server VM"
  type        = number
  default     = 2
}
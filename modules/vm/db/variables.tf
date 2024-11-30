# Database Server Variables
variable "db_vm_box" {
  description = "The Vagrant box for the database server"
  type        = string
  default     = "ubuntu/bionic64"
}

variable "db_vm_name" {
  description = "The name of the database server VM"
  type        = string
  default     = "db-server"
}

variable "db_vm_hostname" {
  description = "The hostname of the database server"
  type        = string
  default     = "db-server.local"
}

variable "db_network" {
  description = "The network type of web server"
  type        = string
  default     = "private_network"
}

variable "db_ip" {
  description = "Private IP address of the web server"
  type        = string
  default     = "192.168.56.11"
}

variable "db_vm_memory" {
  description = "Memory allocated for the database server VM"
  type        = number
  default     = 1024
}

variable "db_vm_cpus" {
  description = "CPU allocation for the database server VM"
  type        = number
  default     = 2
}

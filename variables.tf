# Web VM Variables
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

# Database VM Variables
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

variable "db_vm_memory" {
  description = "Memory allocation for the database server VM"
  type        = number
  default     = 1024
}

variable "db_vm_cpus" {
  description = "CPU allocation for the database server VM"
  type        = number
  default     = 2
}

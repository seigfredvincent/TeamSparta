output "DB_VM_OS" {
  description = "The Vagrant box for the database server"
  value        = var.db_vm_box
}

output "DB_VM_NAME" {
  description = "The name of the database server VM"
  value        = var.db_vm_name
}

output "DB_VM_HOSTNAME" {
  description = "The hostname of the database server"
  value        = var.db_vm_hostname
}

output "DB_VM_NETWORK" {
  description = "The network type of web server"
  value        = var.db_network
}

output "DB_IP_ADDRESS" {
  description = "Private IP address of the web server"
  value        = var.db_ip
}

output "DV_VM_MEMORY" {
  description = "Memory allocated for the database server VM"
  value        = var.db_vm_memory
}

output "DB_VM_CPU" {
  description = "CPU allocation for the database server VM"
  value        = var.db_vm_cpus
}

output "DB_VAGRANTFILE_PATH" {
  description = "Path to the database server's Vagrantfile"
  value       = local_file.vagrantfile.filename
}
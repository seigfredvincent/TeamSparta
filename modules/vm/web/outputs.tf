output "WEB_VM_OS" {
  description = "The Vagrant box for the web server"
  value        = var.web_vm_box
}

output "WEB_VM_NAME" {
  description = "The name of the web server VM"
  value        = var.web_vm_name
}


output "WEB_VM_HOSTNAME" {
  description = "The hostname of the web server"
  value        = var.web_vm_hostname
}

output "WEB_VM_NETWORK" {
  description = "The network type of web server"
  value        = var.web_network
}

output "WEB_IP_ADDRESS" {
  description = "Private IP address of the web server"
  value       = var.web_ip
}

output "WEB_VM_MEMORY" {
  description = "Memory allocation for the web server VM"
  value       = var.web_vm_memory
}

output "WEB_VM_CPU" {
  description = "CPU allocation for the web server VM"
  value        = var.web_vm_cpus
}

output "WEB_VAGRANTFILE_PATH" {
  description = "Path to the web server's Vagrantfile"
  value       = local_file.vagrantfile.filename
}
module "web" {
  source = "./modules/vm/web"

  web_vm_box = var.web_vm_box
  web_vm_name = var.web_vm_name
  web_vm_hostname = var.web_vm_hostname
  web_vm_memory = var.web_vm_memory
  web_vm_cpus = var.web_vm_cpus
}

module "db" {
  source = "./modules/vm/db"
  db_vm_box = var.db_vm_box
  db_vm_name = var.db_vm_name
  db_vm_hostname = var.db_vm_hostname
  db_vm_memory = var.db_vm_memory
  db_vm_cpus = var.db_vm_cpus
}


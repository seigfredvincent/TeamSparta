resource "local_file" "vagrantfile" {
  filename = "${path.module}/Vagrantfile"

  content = <<-EOF
  Vagrant.configure("2") do |config|
    config.vm.box = "${var.db_vm_box}"
    config.vm.hostname = "${var.db_vm_hostname}"

    config.vm.network "${var.db_network}", ip: "${var.db_ip}"

    config.vm.provider "virtualbox" do |vb|
      vb.name = "${var.db_vm_name}"
      vb.memory = ${var.db_vm_memory}
      vb.cpus = ${var.db_vm_cpus}
    end

    config.vm.provision "shell", inline: <<-SHELL
      echo "Provisioning ${var.db_vm_name}..."
      ${file("${path.module}/templates/db.sh")}
    SHELL
  end
  EOF
}

# resource "null_resource" "run_vagrant_db" {
#   provisioner "local-exec" {
#     command = "cd ${path.module} && vagrant up"
#   }
# }
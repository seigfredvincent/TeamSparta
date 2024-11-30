resource "local_file" "vagrantfile" {
  filename = "${path.module}/Vagrantfile"

  content = <<-EOF
  Vagrant.configure("2") do |config|
    config.vm.box = "${var.web_vm_box}"
    config.vm.hostname = "${var.web_vm_hostname}"

    config.vm.network "${var.web_network}", ip: "${var.web_ip}"

    config.vm.provider "virtualbox" do |vb|
      vb.name = "${var.web_vm_name}"
      vb.memory = ${var.web_vm_memory}
      vb.cpus = ${var.web_vm_cpus}
    end

    config.vm.provision "shell", inline: <<-SHELL
      echo "Provisioning ${var.web_vm_name}..."
      ${file("${path.module}/templates/web.sh")}
    SHELL
  end
  EOF
}

# resource "null_resource" "run_vagrant_web" {
#   provisioner "local-exec" {
#     command = "cd ${path.module} && vagrant up"
#   }
# }
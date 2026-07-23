resource "null_resource" "ansible" {
  depends_on = [
    local_file.ansible_inventory
  ]
  provisioner "local-exec" {
    command = "cd ../ansible && ansible-playbook -i inventory.ini playbook.yml"
  }
}
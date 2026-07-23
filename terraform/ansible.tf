resource "local_file" "ansible_inventory" {
  filename = "../ansible/inventory.ini"
  content = templatefile("${path.module}/inventory.tpl", {
    vm_ip = yandex_compute_instance.web.network_interface[0].nat_ip_address
  })
}
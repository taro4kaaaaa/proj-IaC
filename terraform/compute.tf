resource "yandex_compute_instance" "web" {
  name = "web-server"
  zone = var.zone
  resources {
    cores  = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = 10
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.public.id
    nat       = true
    security_group_ids = [
      yandex_vpc_security_group.web.id
    ]
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
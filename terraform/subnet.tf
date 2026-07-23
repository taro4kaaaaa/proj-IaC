resource "yandex_vpc_subnet" "public" {
  name       = "public-subnet"
  network_id = yandex_vpc_network.main.id
  zone       = var.zone
  v4_cidr_blocks = [
    "10.128.0.0/24"
  ]
}
output "vm_public_ip" {
  description = "Public IP address of web server"
  value       = yandex_compute_instance.web.network_interface[0].nat_ip_address
}
output "vm_private_ip" {
  description = "Private IP address of web server"
  value       = yandex_compute_instance.web.network_interface[0].ip_address
}
output "vm_name" {
  description = "Virtual machine name"
  value       = yandex_compute_instance.web.name
}
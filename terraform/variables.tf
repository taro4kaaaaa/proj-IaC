variable "cloud_id" {
  type = string
}
variable "folder_id" {
  type = string
}
variable "zone" {
  type    = string
  default = "ru-central1-a"
}
variable "image_id" {
  default = "fd8429vdm30a3688t25j"
}
variable "public_key" {
  type        = string
  description = "SSH public key for VM access"
}
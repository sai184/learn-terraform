resource "null_resource" "module"{
provisioner "local-exec" {
  command = "echo ${var.root}"
}
}
variable "root" {

}
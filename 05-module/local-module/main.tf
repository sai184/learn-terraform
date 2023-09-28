resource "null_resource" "module"{
provisioner "local-exec" {
  command = "echo ${var.input}"
}
}
variable "input" {

}
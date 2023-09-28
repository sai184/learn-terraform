resource "null_resource" "module"{
provisioner "local-exec" {
  command = "echo hello nagarjuna"
#${var.input}"
}

 }
#variable "input" {

#}

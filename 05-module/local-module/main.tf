resource "null_resource" "module"{
provisioner "local-exec" {
  command = "echo hellonag"
#${var.input}"
}

 }
#variable "input" {

#}

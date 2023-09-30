resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo hello nagarjuna ${var.env} Envirirment"
  }
}
variable "env" {}
terraform {
  backend "s3" {}
}
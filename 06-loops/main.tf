resource "null_resource" "loops" {
  count = 3
  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}
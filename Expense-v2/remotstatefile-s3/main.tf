terraform {
  backend "s3" {
    bucket = "terraform523"
    key    = "remotestatefile-s3/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}
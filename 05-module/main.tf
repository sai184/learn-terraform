module "root" {
  source = "./local-module"
  root = var.input
}
variable "input" {
  default = "hello nagarjuna"
}
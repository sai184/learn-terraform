module "root" {
  source = "./local-module"
  #input = var.input
}
variable "input" {
  default = "hello nagarjuna"
}
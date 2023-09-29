module "expense" {
  source = "./appcreate"
  count = var.expense[count.index]
}
variable "expense" {
  default = ["frontend","backend","mysql"]
}


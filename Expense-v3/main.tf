module "expense" {
  count =3
  source = "./appcreate"
  component = var.expense[count.index]
}
variable "expense" {
  default = ["frontend","backend","mysql"]
}


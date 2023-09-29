module "expense" {
  #count =3
  count = length(var.expense)
  source = "./appcreate"
  component = var.expense[count.index]
}
variable "expense" {
  default = ["frontend","backend","mysql"]
}


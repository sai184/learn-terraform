
module "expense" {
  source = "./appcreate"
  count = var.expense[count.index]
}
variable "expense" {
  deafult = ["frontend","backend","mysql"]
}
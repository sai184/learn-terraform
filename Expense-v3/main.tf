<<<<<<< HEAD

module "expense" {
  source = "./appcreate"
  count = var.expense[count.index]
}
variable "expense" {
  deafult = ["frontend","backend","mysql"]
}
=======
module "frontendt" {
  source = "appcreate"
  component = "frontend"
}
module "backendt" {
  source = "appcreate"
  component = "backend"
}
module "mysqlt" {
  source = "appcreate"
  component = "mysql"
}
>>>>>>> origin/main

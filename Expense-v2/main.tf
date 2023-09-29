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

module "frontendt" {
  source = "./appcreate"
  component = "frontendt"
}
module "backendt" {
  source = "./appcreate"
  component = "backendt"
}
module "mysqlt" {
  source = "./appcreate"
  component = "mysqlt"
}

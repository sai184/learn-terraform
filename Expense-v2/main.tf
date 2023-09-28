module "frontend" {
  source = "./appcreate"
  component = "frontendt"
}
module "backendt" {
  source = "./appcreate"
  component = "backendt"
}
module "frontend" {
  source = "./appcreate"
  component = "mysqlt"
}

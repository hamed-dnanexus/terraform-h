terraform {
  backend "atlas" {
    name    = "test/hamed"
    address = "https://atlas.hashicorp.com"
  }
}

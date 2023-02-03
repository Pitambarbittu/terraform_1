resource "local_file" "foo1" {
  content = "foooo"
  filename = local.a
  
}

locals {
  a = "bittu"
}

locals {
  arr = ["host1", "host2", "host3"]
}


locals {
  arr2 = ["host1", "host2", "host3"]
}
resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

locals {
  arr3 = ["host1", "host2", "host3"]
}

output "test" {
  value = local.arr
}

output "tes2" {
  value = local.arr3
}
output "ran_str" {
    value = random_string.random.result
}
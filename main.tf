# resource "random_id" "random" {
#   keepers = {
#     uuid = "${uuid()}"
#   }

#   byte_length = 8
# }

# data "external" "example" {
#   program = ["/bin/sh", "-c", "sleep 5 && echo {}"]
# }

# output "random" {
#   value = "${random_id.random.hex}"
# }

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

data "external" "example" {
  program = ["/bin/sh", "-c", "sleep 5 && echo {}"]
}

output "random" {
  value = random_id.random.hex
}


resource "null_resource" "cluster" {
  triggers = {
    cluster_instance_ids = "test"
  }
}

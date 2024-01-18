# output "subnets" {
#   value = {
#     for entry in var.network_config.subnets : entry.name => module.subnets[entry.name].subnet_id
#   }
#   description = "The created subnet resources"
# }

